; ModuleID = './plug-ins/common/red-eye-removal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Red eye threshold in percent\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"plug-in-red-eye-removal\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Remove the red eye effect caused by camera flashes\00", align 1
@.str.10 = private unnamed_addr constant [239 x i8] c"This plug-in removes the red eye effect caused by camera flashes by using a percentage based red color threshold.  Make a selection containing the eyes, and apply the filter while adjusting the threshold to accurately remove the red eyes.\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"Robert Merkel <robert.merkel@benambra.org>, Andreas R\C3\B8sdal <andrearo@stud.ntnu.no>\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Copyright 2004-2006 Robert Merkel, Andreas R\C3\B8sdal\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"2006\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"_Red Eye Removal...\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@threshold = internal global i32 50, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"red-eye-removal\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Red Eye Removal\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"gimp-red-eye-removal\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"_Threshold:\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Threshold for the red eye color to remove.\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"Manually selecting the eyes may improve the results.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Removing red eye\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
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
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data8 to i32*
  %5 = load i32, i32* %d_image, align 4
  store i32 %5, i32* %image_ID, align 4
  %6 = load i32, i32* %run_mode, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.12
    i32 2, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %do.end
  %7 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %7, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %status, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %9 = load i32, i32* %d_int3211, align 4
  store i32 %9, i32* @threshold, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %call13 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (i32* @threshold to i8*))
  %10 = load i32, i32* %image_ID, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call14 = call i32 @dialog(i32 %10, %struct._GimpDrawable* %11)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store i32 4, i32* %status, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb.12
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.end
  %call18 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (i32* @threshold to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %if.end.16, %if.end
  %12 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %12, 3
  br i1 %cmp19, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %sw.epilog
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id, align 4
  %call20 = call i32 @gimp_drawable_is_rgb(i32 %14)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.31

if.then.22:                                       ; preds = %land.lhs.true
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @remove_redeye(%struct._GimpDrawable* %15)
  %16 = load i32, i32* %run_mode, align 4
  %cmp23 = icmp ne i32 %16, 1
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.22
  %call25 = call i32 @gimp_displays_flush()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.22
  %17 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp eq i32 %17, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %call29 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (i32* @threshold to i8*), i32 4)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %if.end.32

if.else.31:                                       ; preds = %land.lhs.true, %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.end.30
  %18 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %19, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %20 = load i32, i32* %status, align 4
  store i32 %20, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %21)
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
define internal i32 @dialog(i32 %image_id, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  %hints = alloca %struct._GtkWidget*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %run, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %table, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %24, i32 6)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #5
  %33 = load i32, i32* @threshold, align 4
  %conv = sitofp i32 %33 to double
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0)) #5
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %32, i32 1, i32 0, i8* %call24, i32 100, i32 0, double %conv, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 1.000000e+02, i8* %call25, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 0
  %35 = load i32, i32* %drawable_id, align 4
  %call27 = call i32 @gimp_item_get_image(i32 %35)
  %call28 = call i32 @gimp_selection_is_empty(i32 %call27)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0)) #5
  %call30 = call %struct._GtkWidget* @gimp_hint_box_new(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %hints, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call31)
  %38 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hints, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hints, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %42 = bitcast %struct._GtkWidget* %41 to i8*
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = bitcast %struct._GimpDrawable* %43 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @remove_redeye_preview to void ()*), i8* %44, void (i8*, %struct._GClosure*)* null, i32 2)
  %45 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %46 = bitcast %struct._GtkObject* %45 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @threshold to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %48 = bitcast %struct._GtkObject* %47 to i8*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %50, void (i8*, %struct._GClosure*)* null, i32 2)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_dialog_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call36)
  %54 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpDialog*
  %call38 = call i32 @gimp_dialog_run(%struct._GimpDialog* %54)
  %cmp = icmp eq i32 %call38, -5
  %conv39 = zext i1 %cmp to i32
  store i32 %conv39, i32* %run, align 4
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %55)
  %56 = load i32, i32* %run, align 4
  ret i32 %56
}

declare i32 @gimp_drawable_is_rgb(i32) #1

; Function Attrs: nounwind uwtable
define internal void @remove_redeye(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %pr = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0)) #5
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_has_alpha(i32 %3)
  store i32 %call4, i32* %has_alpha, align 4
  store i32 0, i32* %progress, align 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %max_progress, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 1, i32 1)
  %call5 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call5, i8** %pr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %16, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %data6 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %18 = load i8*, i8** %data6, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %19 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %20 = load i32, i32* %h, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %21 = load i32, i32* %bpp, align 4
  %22 = load i32, i32* %has_alpha, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %23 = load i32, i32* %rowstride, align 4
  call void @redeye_inner_loop(i8* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %w7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %24 = load i32, i32* %w7, align 4
  %h8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %25 = load i32, i32* %h8, align 4
  %mul9 = mul nsw i32 %24, %25
  %26 = load i32, i32* %progress, align 4
  %add = add nsw i32 %26, %mul9
  store i32 %add, i32* %progress, align 4
  %27 = load i32, i32* %i, align 4
  %rem = srem i32 %27, 16
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %for.body
  %28 = load i32, i32* %progress, align 4
  %conv = sitofp i32 %28 to double
  %29 = load i32, i32* %max_progress, align 4
  %conv12 = sitofp i32 %29 to double
  %div = fdiv double %conv, %conv12
  %call13 = call i32 @gimp_progress_update(double %div)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %30 = load i8*, i8** %pr, align 8
  %call15 = call i8* @gimp_pixel_rgns_process(i8* %30)
  store i8* %call15, i8** %pr, align 8
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call16 = call i32 @gimp_progress_update(double 1.000000e+00)
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %32)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id17, align 4
  %call18 = call i32 @gimp_drawable_merge_shadow(i32 %34, i32 1)
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id19, align 4
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %height, align 4
  %call20 = call i32 @gimp_drawable_update(i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %return

return:                                           ; preds = %for.end, %if.then
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare %struct._GtkWidget* @gimp_hint_box_new(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @remove_redeye_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %1 = bitcast %struct._GimpPreview* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_zoom_preview_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpZoomPreview*
  %call2 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %2, i32* %width, i32* %height, i32* %bpp)
  store i8* %call2, i8** %src, align 8
  %3 = load i32, i32* %height, align 4
  %4 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %bpp, align 4
  %mul3 = mul nsw i32 %mul, %5
  %conv = sext i32 %mul3 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call4, i8** %dest, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %7)
  store i32 %call5, i32* %has_alpha, align 4
  %8 = load i32, i32* %bpp, align 4
  %9 = load i32, i32* %width, align 4
  %mul6 = mul nsw i32 %8, %9
  store i32 %mul6, i32* %rowstride, align 4
  %10 = load i8*, i8** %src, align 8
  %11 = load i8*, i8** %dest, align 8
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %14 = load i32, i32* %bpp, align 4
  %15 = load i32, i32* %has_alpha, align 4
  %16 = load i32, i32* %rowstride, align 4
  call void @redeye_inner_loop(i8* %10, i8* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %18 = load i8*, i8** %dest, align 8
  %19 = load i32, i32* %rowstride, align 4
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %17, i8* %18, i32 %19)
  %20 = load i8*, i8** %src, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %21)
  ret void
}

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @redeye_inner_loop(i8* %src, i8* %dest, i32 %width, i32 %height, i32 %bpp, i32 %has_alpha, i32 %rowstride) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %alpha = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %adjusted_red = alloca i32, align 4
  %adjusted_green = alloca i32, align 4
  %adjusted_blue = alloca i32, align 4
  %adjusted_threshold = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i32 %rowstride, i32* %rowstride.addr, align 4
  store i32 0, i32* %red, align 4
  store i32 1, i32* %green, align 4
  store i32 2, i32* %blue, align 4
  store i32 3, i32* %alpha, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %0 = load i32, i32* %y, align 4
  %1 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8
  store i8* %2, i8** %s, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  store i8* %3, i8** %d, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %conv4 = sitofp i32 %conv to double
  %mul = fmul double %conv4, 5.133333e-01
  %conv5 = fptosi double %mul to i32
  store i32 %conv5, i32* %adjusted_red, align 4
  %8 = load i8*, i8** %s, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %mul8 = mul nsw i32 %conv7, 1
  store i32 %mul8, i32* %adjusted_green, align 4
  %10 = load i8*, i8** %s, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %conv11 = sitofp i32 %conv10 to double
  %mul12 = fmul double %conv11, 1.933333e-01
  %conv13 = fptosi double %mul12 to i32
  store i32 %conv13, i32* %adjusted_blue, align 4
  %12 = load i32, i32* @threshold, align 4
  %sub = sub nsw i32 %12, 50
  %mul14 = mul nsw i32 %sub, 2
  store i32 %mul14, i32* %adjusted_threshold, align 4
  %13 = load i32, i32* %adjusted_red, align 4
  %14 = load i32, i32* %adjusted_green, align 4
  %15 = load i32, i32* %adjusted_threshold, align 4
  %sub15 = sub nsw i32 %14, %15
  %cmp16 = icmp sge i32 %13, %sub15
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.3
  %16 = load i32, i32* %adjusted_red, align 4
  %17 = load i32, i32* %adjusted_blue, align 4
  %18 = load i32, i32* %adjusted_threshold, align 4
  %sub18 = sub nsw i32 %17, %18
  %cmp19 = icmp sge i32 %16, %sub18
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %adjusted_green, align 4
  %20 = load i32, i32* %adjusted_blue, align 4
  %add = add nsw i32 %19, %20
  %conv21 = sitofp i32 %add to double
  %div = fdiv double %conv21, 0x3FF06D39F4EE5406
  %cmp22 = fcmp ogt double %div, 2.550000e+02
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.34

cond.false:                                       ; preds = %if.then
  %21 = load i32, i32* %adjusted_green, align 4
  %22 = load i32, i32* %adjusted_blue, align 4
  %add24 = add nsw i32 %21, %22
  %conv25 = sitofp i32 %add24 to double
  %div26 = fdiv double %conv25, 0x3FF06D39F4EE5406
  %cmp27 = fcmp olt double %div26, 0.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %23 = load i32, i32* %adjusted_green, align 4
  %24 = load i32, i32* %adjusted_blue, align 4
  %add31 = add nsw i32 %23, %24
  %conv32 = sitofp i32 %add31 to double
  %div33 = fdiv double %conv32, 0x3FF06D39F4EE5406
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi double [ 0.000000e+00, %cond.true.29 ], [ %div33, %cond.false.30 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true
  %cond35 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv36 = fptoui double %cond35 to i8
  %25 = load i8*, i8** %d, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv36, i8* %arrayidx37, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.3
  %26 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx38, align 1
  %28 = load i8*, i8** %d, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %27, i8* %arrayidx39, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.34
  %29 = load i8*, i8** %s, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx40, align 1
  %31 = load i8*, i8** %d, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %arrayidx41, align 1
  %32 = load i8*, i8** %s, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx42, align 1
  %34 = load i8*, i8** %d, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 %33, i8* %arrayidx43, align 1
  %35 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end
  %36 = load i8*, i8** %s, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx45, align 1
  %38 = load i8*, i8** %d, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %37, i8* %arrayidx46, align 1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end
  %39 = load i32, i32* %bpp.addr, align 4
  %40 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %41 = load i32, i32* %bpp.addr, align 4
  %42 = load i8*, i8** %d, align 8
  %idx.ext48 = sext i32 %41 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %42, i64 %idx.ext48
  store i8* %add.ptr49, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %43 = load i32, i32* %x, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %44 = load i32, i32* %rowstride.addr, align 4
  %45 = load i8*, i8** %src.addr, align 8
  %idx.ext50 = sext i32 %44 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %45, i64 %idx.ext50
  store i8* %add.ptr51, i8** %src.addr, align 8
  %46 = load i32, i32* %rowstride.addr, align 4
  %47 = load i8*, i8** %dest.addr, align 8
  %idx.ext52 = sext i32 %46 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %47, i64 %idx.ext52
  store i8* %add.ptr53, i8** %dest.addr, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %48 = load i32, i32* %y, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* %y, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
