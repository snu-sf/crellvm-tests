; ModuleID = './plug-ins/common/colorify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ColorifyVals = type { %struct._GimpRGB }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color to apply\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"plug-in-colorify\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Replace all colors with shades of a specified color\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Makes an average of the RGB channels and uses it to set the color\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Francisco Bustamante\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Colorif_y...\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@cvals = internal global %struct.ColorifyVals { %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"Colorifying\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"colorify\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Colorify\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"gimp-colorify\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Custom color:\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Colorify Custom Color\00", align 1
@custom_color_button = internal global %struct._GtkWidget* null, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@button_color = internal global [7 x %struct._GimpRGB] [%struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 }], align 16
@.str.28 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@lum_red_lookup = internal global [256 x i32] zeroinitializer, align 16
@lum_green_lookup = internal global [256 x i32] zeroinitializer, align 16
@lum_blue_lookup = internal global [256 x i32] zeroinitializer, align 16
@final_red_lookup = internal global [256 x i32] zeroinitializer, align 16
@final_green_lookup = internal global [256 x i32] zeroinitializer, align 16
@final_blue_lookup = internal global [256 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0))
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
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
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
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ColorifyVals* @cvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @colorify_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 4
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %10 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %10, 3
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data15 to %struct._GimpRGB*
  %12 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ColorifyVals* @cvals to i8*), i8* %12, i64 32, i32 8, i1 false)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.end
  %call18 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ColorifyVals* @cvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %if.end.16, %if.end
  %13 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %13, 3
  br i1 %cmp19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %sw.epilog
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0)) #4
  %call22 = call i32 @gimp_progress_init(i8* %call21)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @colorify(%struct._GimpDrawable* %14, %struct._GimpPreview* null)
  %15 = load i32, i32* %run_mode, align 4
  %cmp23 = icmp eq i32 %15, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.20
  %call25 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ColorifyVals* @cvals to i8*), i32 32)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.20
  %16 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %16, 1
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %call29 = call i32 @gimp_displays_flush()
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %17)
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.31, %if.then
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
define internal i32 @colorify_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %color_area = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @colorify to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 7, i32 1)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gtk_label_new(i8* %call25)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %label, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_table_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call27)
  %39 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkTable*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %39, %struct._GtkWidget* %40, i32 4, i32 6, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call29, i32 30, i32 30, %struct._GimpRGB* getelementptr inbounds (%struct.ColorifyVals, %struct.ColorifyVals* @cvals, i32 0, i32 0), i32 0)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** @custom_color_button, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @custom_color_button, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct.ColorifyVals* @cvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @custom_color_button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 2)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** @custom_color_button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %50, %struct._GtkWidget* %51, i32 6, i32 7, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** @custom_color_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %53 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %53, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call35 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %button, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds [7 x %struct._GimpRGB], [7 x %struct._GimpRGB]* @button_color, i32 0, i64 %idxprom
  %call36 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %arrayidx, i32 0, i32 512)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %color_area, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_widget_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call37)
  %57 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %57, i32 30, i32 30)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call39)
  %60 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %60, %struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %64 to i64
  %arrayidx42 = getelementptr inbounds [7 x %struct._GimpRGB], [7 x %struct._GimpRGB]* @button_color, i32 0, i64 %idxprom41
  %65 = bitcast %struct._GimpRGB* %arrayidx42 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @predefined_color_callback to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call44)
  %69 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %add = add nsw i32 %72, 1
  call void @gtk_table_attach(%struct._GtkTable* %69, %struct._GtkWidget* %70, i32 %71, i32 %add, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_dialog_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call46)
  %78 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDialog*
  %call48 = call i32 @gimp_dialog_run(%struct._GimpDialog* %78)
  %cmp49 = icmp eq i32 %call48, -5
  %conv = zext i1 %cmp49 to i32
  store i32 %conv, i32* %run, align 4
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %79)
  %80 = load i32, i32* %run, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @colorify(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %src = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 2.126000e-01
  %conv1 = fptosi double %mul to i32
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @lum_red_lookup, i32 0, i64 %idxprom
  store i32 %conv1, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %conv2 = sitofp i32 %3 to double
  %mul3 = fmul double %conv2, 7.152000e-01
  %conv4 = fptosi double %mul3 to i32
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* @lum_green_lookup, i32 0, i64 %idxprom5
  store i32 %conv4, i32* %arrayidx6, align 4
  %5 = load i32, i32* %i, align 4
  %conv7 = sitofp i32 %5 to double
  %mul8 = fmul double %conv7, 7.220000e-02
  %conv9 = fptosi double %mul8 to i32
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @lum_blue_lookup, i32 0, i64 %idxprom10
  store i32 %conv9, i32* %arrayidx11, align 4
  %7 = load i32, i32* %i, align 4
  %conv12 = sitofp i32 %7 to double
  %8 = load double, double* getelementptr inbounds (%struct.ColorifyVals, %struct.ColorifyVals* @cvals, i32 0, i32 0, i32 0), align 8
  %mul13 = fmul double %conv12, %8
  %conv14 = fptosi double %mul13 to i32
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @final_red_lookup, i32 0, i64 %idxprom15
  store i32 %conv14, i32* %arrayidx16, align 4
  %10 = load i32, i32* %i, align 4
  %conv17 = sitofp i32 %10 to double
  %11 = load double, double* getelementptr inbounds (%struct.ColorifyVals, %struct.ColorifyVals* @cvals, i32 0, i32 0, i32 1), align 8
  %mul18 = fmul double %conv17, %11
  %conv19 = fptosi double %mul18 to i32
  %12 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @final_green_lookup, i32 0, i64 %idxprom20
  store i32 %conv19, i32* %arrayidx21, align 4
  %13 = load i32, i32* %i, align 4
  %conv22 = sitofp i32 %13 to double
  %14 = load double, double* getelementptr inbounds (%struct.ColorifyVals, %struct.ColorifyVals* @cvals, i32 0, i32 0, i32 2), align 8
  %mul23 = fmul double %conv22, %14
  %conv24 = fptosi double %mul23 to i32
  %15 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* @final_blue_lookup, i32 0, i64 %idxprom25
  store i32 %conv24, i32* %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %17, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %18 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %19 = bitcast %struct._GimpPreview* %18 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call)
  %20 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpZoomPreview*
  %call28 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %20, i32* %width, i32* %height, i32* %bytes)
  store i8* %call28, i8** %src, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.38, %if.then
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %mul30 = mul nsw i32 %22, %23
  %cmp31 = icmp slt i32 %21, %mul30
  br i1 %cmp31, label %for.body.33, label %for.end.40

for.body.33:                                      ; preds = %for.cond.29
  %24 = load i8*, i8** %src, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %bytes, align 4
  %mul34 = mul nsw i32 %25, %26
  %idx.ext = sext i32 %mul34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %27 = load i8*, i8** %src, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %bytes, align 4
  %mul35 = mul nsw i32 %28, %29
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %27, i64 %idx.ext36
  %30 = load i32, i32* %bytes, align 4
  call void @colorify_func(i8* %add.ptr, i8* %add.ptr37, i32 %30, i8* null)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.33
  %31 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.29

for.end.40:                                       ; preds = %for.cond.29
  %32 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %33 = load i8*, i8** %src, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %bytes, align 4
  %mul41 = mul nsw i32 %34, %35
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %32, i8* %33, i32 %mul41)
  %36 = load i8*, i8** %src, align 8
  call void @g_free(i8* %36)
  br label %if.end

if.else:                                          ; preds = %for.end
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %37, i32 0, void (i8*, i8*, i32, i8*)* @colorify_func, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.40
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @predefined_color_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @custom_color_button, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRGB*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %2, %struct._GimpRGB* %4)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @colorify_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %lum = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i32], [256 x i32]* @lum_red_lookup, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx1, align 4
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* @lum_green_lookup, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %2, %5
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx5, align 1
  %idxprom6 = zext i8 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @lum_blue_lookup, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %add, %8
  store i32 %add8, i32* %lum, align 4
  %9 = load i32, i32* %lum, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @final_red_lookup, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %conv = trunc i32 %10 to i8
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %conv, i8* %arrayidx11, align 1
  %12 = load i32, i32* %lum, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @final_green_lookup, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %conv14 = trunc i32 %13 to i8
  %14 = load i8*, i8** %dest.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %conv14, i8* %arrayidx15, align 1
  %15 = load i32, i32* %lum, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* @final_blue_lookup, i32 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %conv18 = trunc i32 %16 to i8
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %conv18, i8* %arrayidx19, align 1
  %18 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp eq i32 %18, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i8*, i8** %src.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 3
  %20 = load i8, i8* %arrayidx21, align 1
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 3
  store i8 %20, i8* %arrayidx22, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
