; ModuleID = './plug-ins/common/color-to-alpha.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.C2AValues = type { %struct._GimpRGB }
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
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Color to remove\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"plug-in-colortoalpha\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Convert a specified color to transparency\00", align 1
@.str.10 = private unnamed_addr constant [141 x i8] c"This replaces as much of a given color as possible in each pixel with a corresponding amount of alpha, then readjusts the color accordingly.\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Seth Burgess\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Seth Burgess <sjburges@gimp.org>\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"7th Aug 1999\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Color to _Alpha...\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"<Image>/Layer/Transparency/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.C2AValues { %struct._GimpRGB { double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00 } }, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"Removing color\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"color-to-aplha\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Color to Alpha\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp-color-to-aplha\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"color-to-alpha\04From:\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Color to Alpha Color Picker\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"to alpha\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %lock_alpha = alloca i32, align 4
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
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* %image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %do.end
  %call9 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.C2AValues* @pvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @color_to_alpha_dialog(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %11)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %12 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %12, 4
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.11
  store i32 1, i32* %status, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %sw.bb.11
  %13 = load i32, i32* %status, align 4
  %cmp14 = icmp eq i32 %13, 3
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 3
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data17 to %struct._GimpRGB*
  %15 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.C2AValues* @pvals to i8*), i8* %15, i64 32, i32 8, i1 false)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end
  %call20 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.C2AValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.19, %if.end.18, %if.end
  %16 = load i32, i32* %status, align 4
  %cmp21 = icmp eq i32 %16, 3
  br i1 %cmp21, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %sw.epilog
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 0
  %18 = load i32, i32* %drawable_id, align 4
  %call22 = call i32 @gimp_drawable_is_rgb(i32 %18)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.47

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 0
  %20 = load i32, i32* %drawable_id25, align 4
  %call26 = call i32 @gimp_item_is_layer(i32 %20)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.47

if.then.28:                                       ; preds = %land.lhs.true.24
  %21 = load i32, i32* %image_ID, align 4
  %call29 = call i32 @gimp_image_undo_group_start(i32 %21)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id30, align 4
  %call31 = call i32 @gimp_layer_add_alpha(i32 %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id32 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id32, align 4
  %call33 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %25)
  store %struct._GimpDrawable* %call33, %struct._GimpDrawable** %drawable, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id34 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_id34, align 4
  %call35 = call i32 @gimp_layer_get_lock_alpha(i32 %27)
  store i32 %call35, i32* %lock_alpha, align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 0
  %29 = load i32, i32* %drawable_id36, align 4
  %call37 = call i32 @gimp_layer_set_lock_alpha(i32 %29, i32 0)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #4
  %call39 = call i32 @gimp_progress_init(i8* %call38)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %30, i32 0, void (i8*, i8*, i32, i8*)* @to_alpha_func, i8* null)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id40, align 4
  %33 = load i32, i32* %lock_alpha, align 4
  %call41 = call i32 @gimp_layer_set_lock_alpha(i32 %32, i32 %33)
  %34 = load i32, i32* %image_ID, align 4
  %call42 = call i32 @gimp_image_undo_group_end(i32 %34)
  %35 = load i32, i32* %run_mode, align 4
  %cmp43 = icmp ne i32 %35, 1
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.28
  %call45 = call i32 @gimp_displays_flush()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.28
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.24, %land.lhs.true, %sw.epilog
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %36)
  %37 = load i32, i32* %run_mode, align 4
  %cmp48 = icmp eq i32 %37, 0
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %call50 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.C2AValues* @pvals to i8*), i32 32)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  %38 = load i32, i32* %status, align 4
  store i32 %38, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.51, %if.then
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
define internal i32 @color_to_alpha_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*, %struct._GimpDrawable*)* @color_to_alpha_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i64 15)
  %call22 = call %struct._GtkWidget* @gtk_label_new(i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %label, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call23)
  %33 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0)) #4
  %call26 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call25, i32 40, i32 20, %struct._GimpRGB* getelementptr inbounds (%struct.C2AValues, %struct.C2AValues* @pvals, i32 0, i32 0), i32 0)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %button, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_color_button_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %38, i32 1)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 1, i32 1, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct.C2AValues* @pvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 2)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call35)
  %52 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dialog_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDialog*
  %call39 = call i32 @gimp_dialog_run(%struct._GimpDialog* %58)
  %cmp = icmp eq i32 %call39, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %59)
  %60 = load i32, i32* %run, align 4
  ret i32 %60
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_item_is_layer(i32) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_layer_get_lock_alpha(i32) #1

declare i32 @gimp_layer_set_lock_alpha(i32, i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @to_alpha_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx2, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %2, i8 zeroext %4, i8 zeroext %6, i8 zeroext -1)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx3, align 1
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx4, align 1
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx5, align 1
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 3
  %14 = load i8, i8* %arrayidx6, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext %8, i8 zeroext %10, i8 zeroext %12, i8 zeroext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @color_to_alpha(%struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.C2AValues, %struct.C2AValues* @pvals, i32 0, i32 0))
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8*, i8** %dest.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %color, i8* %arrayidx7, i8* %arrayidx8, i8* %arrayidx9, i8* %arrayidx10)
  ret void
}

declare i32 @gimp_image_undo_group_end(i32) #1

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

; Function Attrs: nounwind uwtable
define internal void @color_to_alpha_preview(%struct._GimpPreview* %preview, %struct._GimpDrawable* %drawable) #0 {
entry:
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %i = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp1, align 4
  store i32 %1, i32* %bpp, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %2, i32* %x, i32* %y)
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %3, i32* %width, i32* %height)
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  %mul2 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %dest, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  %mul3 = mul nsw i32 %6, %7
  %8 = load i32, i32* %bpp, align 4
  %mul4 = mul nsw i32 %mul3, %8
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 1)
  store i8* %call6, i8** %src, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32 0)
  %14 = load i8*, i8** %src, align 8
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %mul7 = mul nsw i32 %20, %21
  %cmp = icmp slt i32 %19, %mul7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %src, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %bpp, align 4
  %mul9 = mul nsw i32 %23, %24
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %25 = load i8*, i8** %dest, align 8
  %26 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %26, 4
  %idx.ext11 = sext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %25, i64 %idx.ext11
  %27 = load i32, i32* %bpp, align 4
  call void @to_alpha_func(i8* %add.ptr, i8* %add.ptr12, i32 %27, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %src, align 8
  call void @g_free(i8* %29)
  %30 = load i32, i32* %bpp, align 4
  %cmp13 = icmp eq i32 %30, 4
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %31 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %32 = load i8*, i8** %dest, align 8
  %33 = load i32, i32* %width, align 4
  %mul15 = mul nsw i32 %33, 4
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %31, i8* %32, i32 %mul15)
  br label %if.end

if.else:                                          ; preds = %for.end
  %34 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %34, i32 0, i32 2
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_preview_area_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call16)
  %37 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpPreviewArea*
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load i8*, i8** %dest, align 8
  %41 = load i32, i32* %width, align 4
  %mul18 = mul nsw i32 %41, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %37, i32 0, i32 0, i32 %38, i32 %39, i32 1, i8* %40, i32 %mul18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %42)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_set_update(%struct._GimpColorButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @color_to_alpha(%struct._GimpRGB* %src, %struct._GimpRGB* %color) #5 {
entry:
  %src.addr = alloca %struct._GimpRGB*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %alpha = alloca %struct._GimpRGB, align 8
  store %struct._GimpRGB* %src, %struct._GimpRGB** %src.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %0, i32 0, i32 3
  %1 = load double, double* %a, align 8
  %a1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 3
  store double %1, double* %a1, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %2, i32 0, i32 0
  %3 = load double, double* %r, align 8
  %cmp = fcmp olt double %3, 1.000000e-04
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %4, i32 0, i32 0
  %5 = load double, double* %r2, align 8
  %r3 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  store double %5, double* %r3, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r4 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %6, i32 0, i32 0
  %7 = load double, double* %r4, align 8
  %8 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %8, i32 0, i32 0
  %9 = load double, double* %r5, align 8
  %cmp6 = fcmp ogt double %7, %9
  br i1 %cmp6, label %if.then.7, label %if.else.13

if.then.7:                                        ; preds = %if.else
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 0
  %11 = load double, double* %r8, align 8
  %12 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %12, i32 0, i32 0
  %13 = load double, double* %r9, align 8
  %sub = fsub double %11, %13
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %14, i32 0, i32 0
  %15 = load double, double* %r10, align 8
  %sub11 = fsub double 1.000000e+00, %15
  %div = fdiv double %sub, %sub11
  %r12 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  store double %div, double* %r12, align 8
  br label %if.end.26

if.else.13:                                       ; preds = %if.else
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %16, i32 0, i32 0
  %17 = load double, double* %r14, align 8
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 0
  %19 = load double, double* %r15, align 8
  %cmp16 = fcmp olt double %17, %19
  br i1 %cmp16, label %if.then.17, label %if.else.24

if.then.17:                                       ; preds = %if.else.13
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %20, i32 0, i32 0
  %21 = load double, double* %r18, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %22, i32 0, i32 0
  %23 = load double, double* %r19, align 8
  %sub20 = fsub double %21, %23
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 0
  %25 = load double, double* %r21, align 8
  %div22 = fdiv double %sub20, %25
  %r23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  store double %div22, double* %r23, align 8
  br label %if.end

if.else.24:                                       ; preds = %if.else.13
  %r25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  store double 0.000000e+00, double* %r25, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.7
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %26, i32 0, i32 1
  %27 = load double, double* %g, align 8
  %cmp28 = fcmp olt double %27, 1.000000e-04
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end.27
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 1
  %29 = load double, double* %g30, align 8
  %g31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  store double %29, double* %g31, align 8
  br label %if.end.59

if.else.32:                                       ; preds = %if.end.27
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %30, i32 0, i32 1
  %31 = load double, double* %g33, align 8
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %32, i32 0, i32 1
  %33 = load double, double* %g34, align 8
  %cmp35 = fcmp ogt double %31, %33
  br i1 %cmp35, label %if.then.36, label %if.else.44

if.then.36:                                       ; preds = %if.else.32
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g37 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %34, i32 0, i32 1
  %35 = load double, double* %g37, align 8
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %36, i32 0, i32 1
  %37 = load double, double* %g38, align 8
  %sub39 = fsub double %35, %37
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 1
  %39 = load double, double* %g40, align 8
  %sub41 = fsub double 1.000000e+00, %39
  %div42 = fdiv double %sub39, %sub41
  %g43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  store double %div42, double* %g43, align 8
  br label %if.end.58

if.else.44:                                       ; preds = %if.else.32
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g45 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %40, i32 0, i32 1
  %41 = load double, double* %g45, align 8
  %42 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g46 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %42, i32 0, i32 1
  %43 = load double, double* %g46, align 8
  %cmp47 = fcmp olt double %41, %43
  br i1 %cmp47, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.else.44
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 1
  %45 = load double, double* %g49, align 8
  %46 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g50 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %46, i32 0, i32 1
  %47 = load double, double* %g50, align 8
  %sub51 = fsub double %45, %47
  %48 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %48, i32 0, i32 1
  %49 = load double, double* %g52, align 8
  %div53 = fdiv double %sub51, %49
  %g54 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  store double %div53, double* %g54, align 8
  br label %if.end.57

if.else.55:                                       ; preds = %if.else.44
  %g56 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  store double 0.000000e+00, double* %g56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.36
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.29
  %50 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %50, i32 0, i32 2
  %51 = load double, double* %b, align 8
  %cmp60 = fcmp olt double %51, 1.000000e-04
  br i1 %cmp60, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %if.end.59
  %52 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b62 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %52, i32 0, i32 2
  %53 = load double, double* %b62, align 8
  %b63 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  store double %53, double* %b63, align 8
  br label %if.end.91

if.else.64:                                       ; preds = %if.end.59
  %54 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b65 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %54, i32 0, i32 2
  %55 = load double, double* %b65, align 8
  %56 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b66 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %56, i32 0, i32 2
  %57 = load double, double* %b66, align 8
  %cmp67 = fcmp ogt double %55, %57
  br i1 %cmp67, label %if.then.68, label %if.else.76

if.then.68:                                       ; preds = %if.else.64
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b69 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %58, i32 0, i32 2
  %59 = load double, double* %b69, align 8
  %60 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b70 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %60, i32 0, i32 2
  %61 = load double, double* %b70, align 8
  %sub71 = fsub double %59, %61
  %62 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b72 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %62, i32 0, i32 2
  %63 = load double, double* %b72, align 8
  %sub73 = fsub double 1.000000e+00, %63
  %div74 = fdiv double %sub71, %sub73
  %b75 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  store double %div74, double* %b75, align 8
  br label %if.end.90

if.else.76:                                       ; preds = %if.else.64
  %64 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b77 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %64, i32 0, i32 2
  %65 = load double, double* %b77, align 8
  %66 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b78 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %66, i32 0, i32 2
  %67 = load double, double* %b78, align 8
  %cmp79 = fcmp olt double %65, %67
  br i1 %cmp79, label %if.then.80, label %if.else.87

if.then.80:                                       ; preds = %if.else.76
  %68 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b81 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %68, i32 0, i32 2
  %69 = load double, double* %b81, align 8
  %70 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b82 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %70, i32 0, i32 2
  %71 = load double, double* %b82, align 8
  %sub83 = fsub double %69, %71
  %72 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b84 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %72, i32 0, i32 2
  %73 = load double, double* %b84, align 8
  %div85 = fdiv double %sub83, %73
  %b86 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  store double %div85, double* %b86, align 8
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.76
  %b88 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  store double 0.000000e+00, double* %b88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.80
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.68
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.61
  %r92 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  %74 = load double, double* %r92, align 8
  %g93 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  %75 = load double, double* %g93, align 8
  %cmp94 = fcmp ogt double %74, %75
  br i1 %cmp94, label %if.then.95, label %if.else.106

if.then.95:                                       ; preds = %if.end.91
  %r96 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  %76 = load double, double* %r96, align 8
  %b97 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  %77 = load double, double* %b97, align 8
  %cmp98 = fcmp ogt double %76, %77
  br i1 %cmp98, label %if.then.99, label %if.else.102

if.then.99:                                       ; preds = %if.then.95
  %r100 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 0
  %78 = load double, double* %r100, align 8
  %79 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a101 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %79, i32 0, i32 3
  store double %78, double* %a101, align 8
  br label %if.end.105

if.else.102:                                      ; preds = %if.then.95
  %b103 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  %80 = load double, double* %b103, align 8
  %81 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a104 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %81, i32 0, i32 3
  store double %80, double* %a104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.99
  br label %if.end.117

if.else.106:                                      ; preds = %if.end.91
  %g107 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  %82 = load double, double* %g107, align 8
  %b108 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  %83 = load double, double* %b108, align 8
  %cmp109 = fcmp ogt double %82, %83
  br i1 %cmp109, label %if.then.110, label %if.else.113

if.then.110:                                      ; preds = %if.else.106
  %g111 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 1
  %84 = load double, double* %g111, align 8
  %85 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a112 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %85, i32 0, i32 3
  store double %84, double* %a112, align 8
  br label %if.end.116

if.else.113:                                      ; preds = %if.else.106
  %b114 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 2
  %86 = load double, double* %b114, align 8
  %87 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a115 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %87, i32 0, i32 3
  store double %86, double* %a115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.110
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.105
  %88 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a118 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %88, i32 0, i32 3
  %89 = load double, double* %a118, align 8
  %cmp119 = fcmp olt double %89, 1.000000e-04
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  br label %return

if.end.121:                                       ; preds = %if.end.117
  %90 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r122 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %90, i32 0, i32 0
  %91 = load double, double* %r122, align 8
  %92 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r123 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %92, i32 0, i32 0
  %93 = load double, double* %r123, align 8
  %sub124 = fsub double %91, %93
  %94 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a125 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %94, i32 0, i32 3
  %95 = load double, double* %a125, align 8
  %div126 = fdiv double %sub124, %95
  %96 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r127 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %96, i32 0, i32 0
  %97 = load double, double* %r127, align 8
  %add = fadd double %div126, %97
  %98 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %r128 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %98, i32 0, i32 0
  store double %add, double* %r128, align 8
  %99 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g129 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %99, i32 0, i32 1
  %100 = load double, double* %g129, align 8
  %101 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g130 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %101, i32 0, i32 1
  %102 = load double, double* %g130, align 8
  %sub131 = fsub double %100, %102
  %103 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a132 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %103, i32 0, i32 3
  %104 = load double, double* %a132, align 8
  %div133 = fdiv double %sub131, %104
  %105 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g134 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %105, i32 0, i32 1
  %106 = load double, double* %g134, align 8
  %add135 = fadd double %div133, %106
  %107 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %g136 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %107, i32 0, i32 1
  store double %add135, double* %g136, align 8
  %108 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b137 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %108, i32 0, i32 2
  %109 = load double, double* %b137, align 8
  %110 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b138 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %110, i32 0, i32 2
  %111 = load double, double* %b138, align 8
  %sub139 = fsub double %109, %111
  %112 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a140 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %112, i32 0, i32 3
  %113 = load double, double* %a140, align 8
  %div141 = fdiv double %sub139, %113
  %114 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b142 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %114, i32 0, i32 2
  %115 = load double, double* %b142, align 8
  %add143 = fadd double %div141, %115
  %116 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %b144 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %116, i32 0, i32 2
  store double %add143, double* %b144, align 8
  %a145 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %alpha, i32 0, i32 3
  %117 = load double, double* %a145, align 8
  %118 = load %struct._GimpRGB*, %struct._GimpRGB** %src.addr, align 8
  %a146 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %118, i32 0, i32 3
  %119 = load double, double* %a146, align 8
  %mul = fmul double %119, %117
  store double %mul, double* %a146, align 8
  br label %return

return:                                           ; preds = %if.end.121, %if.then.120
  ret void
}

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
