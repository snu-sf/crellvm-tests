; ModuleID = './plug-ins/common/iwarp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.iwarp_vals_t = type { i32, double, i32, i32, i32, double, i32 }
%struct._GimpVector2 = type { double, double }
%struct.iwarp_interface = type { i32 }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GBinding = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"plug-in-iwarp\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Use mouse control to warp image areas\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Interactive warping of the specified drawable\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Norbert Schmitz\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"_IWarp...\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@drawable = internal global %struct._GimpDrawable* null, align 8
@destdrawable = internal global %struct._GimpDrawable* null, align 8
@imageID = internal global i32 0, align 4
@iwarp_vals = internal global %struct.iwarp_vals_t { i32 20, double 3.000000e-01, i32 2, i32 1, i32 0, double 2.000000e+00, i32 2 }, align 8
@srcimage = internal global i8* null, align 8
@dstimage = internal global i8* null, align 8
@deform_vectors = internal global %struct._GimpVector2* null, align 8
@deform_area_vectors = internal global %struct._GimpVector2* null, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"iwarp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"IWarp\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gimp-iwarp\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"Click and drag in the preview to define the distortions to apply to the image.\00", align 1
@preview_width = internal global i32 0, align 4
@preview_height = internal global i32 0, align 4
@wint = internal global %struct.iwarp_interface zeroinitializer, align 4
@xl = internal global i32 0, align 4
@yl = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [36 x i8] c"Region affected by plug-in is empty\00", align 1
@xh = internal global i32 0, align 4
@yh = internal global i32 0, align 4
@image_bpp = internal global i32 0, align 4
@lock_alpha = internal global i32 0, align 4
@preview_bpp = internal global i32 0, align 4
@tile_width = internal global i32 0, align 4
@tile_height = internal global i32 0, align 4
@filter = internal global [250 x double] zeroinitializer, align 16
@max_current_preview_width = internal global i32 320, align 4
@max_current_preview_height = internal global i32 320, align 4
@pre2img = internal global double 0.000000e+00, align 8
@img2pre = internal global double 0.000000e+00, align 8
@iwarp_changed = internal global i32 0, align 4
@preview = internal global %struct._GtkWidget* null, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@lastx = internal global i32 0, align 4
@lasty = internal global i32 0, align 4
@iwarp_preview_get_pixel.black = internal global [4 x i8] zeroinitializer, align 1
@resize_idle = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"Deform Mode\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"_Move\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"_Grow\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"S_wirl CCW\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Remo_ve\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"S_hrink\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Sw_irl CW\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"_Deform radius:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"D_eform amount:\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"_Bilinear\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Adaptive s_upersample\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Ma_x depth:\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Thresho_ld:\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"_Settings\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"A_nimate\00", align 1
@do_animate = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [19 x i8] c"Number of _frames:\00", align 1
@animate_num_frames = internal global i32 2, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"R_everse\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@do_animate_reverse = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"_Ping pong\00", align 1
@do_animate_ping_pong = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"_Animate\00", align 1
@layer_alpha = internal global i32 0, align 4
@animate_deform_value = internal global double 1.000000e+00, align 8
@frame_number = internal global i32 0, align 4
@.str.53 = private unnamed_addr constant [9 x i8] c"Frame %d\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Warping Frame %d\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Ping pong\00", align 1
@tile = internal global %struct._GimpTile* null, align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"Warping\00", align 1
@supersample_threshold_2 = internal global double 0.000000e+00, align 8
@iwarp_get_pixel.old_col = internal global i32 -1, align 4
@iwarp_get_pixel.old_row = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @drawable, align 8
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @destdrawable, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_int329 = bitcast %union._GimpParamData* %data8 to i32*
  %5 = load i32, i32* %d_int329, align 4
  store i32 %5, i32* @imageID, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_is_rgb(i32 %7)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id11, align 4
  %call12 = call i32 @gimp_drawable_is_gray(i32 %9)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %10 = load i32, i32* %run_mode, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %call14 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.iwarp_vals_t* @iwarp_vals to i8*))
  %call15 = call i32 @iwarp_dialog()
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %sw.bb
  call void @iwarp()
  br label %if.end

if.end:                                           ; preds = %if.then.17, %sw.bb
  %call18 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.iwarp_vals_t* @iwarp_vals to i8*), i32 48)
  %call19 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %if.end
  br label %if.end.21

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %sw.epilog
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %12, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  %15 = load i8*, i8** @srcimage, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** @dstimage, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %18 = bitcast %struct._GimpVector2* %17 to i8*
  call void @g_free(i8* %18)
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %20 = bitcast %struct._GimpVector2* %19 to i8*
  call void @g_free(i8* %20)
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

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iwarp_dialog() #0 {
entry:
  %retval = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hint = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1)
  %call = call i32 @iwarp_init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 1, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @iwarp_dialog_response_update(%struct._GtkWidget* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @iwarp_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %main_hbox, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %13, i32 12)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %16)
  %17 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @iwarp_preview_build(%struct._GtkWidget* %26, %struct._GtkWidget* %27)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i32 0, i32 0)) #4
  %call21 = call %struct._GtkWidget* @gimp_hint_box_new(i8* %call20)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %hint, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hint, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hint, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call24 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %notebook, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_notebook_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %35, i32 2)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %main_hbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call27)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @iwarp_settings_dialog(%struct._GtkWidget* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @iwarp_animate_dialog(%struct._GtkWidget* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load i32, i32* @preview_width, align 4
  %47 = load i32, i32* @preview_height, align 4
  call void @iwarp_update_preview(i32 0, i32 0, i32 %46, i32 %47)
  call void @gtk_main()
  %48 = load i32, i32* getelementptr inbounds (%struct.iwarp_interface, %struct.iwarp_interface* @wint, i32 0, i32 0), align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @iwarp() #0 {
entry:
  %i = alloca i32, align 4
  %layerID = alloca i32, align 4
  %animlayers = alloca i32*, align 8
  %delta = alloca double, align 8
  %st = alloca i8*, align 8
  %st46 = alloca i8*, align 8
  %0 = load i32, i32* @image_bpp, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @image_bpp, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* @layer_alpha, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* @layer_alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* @animate_num_frames, align 4
  %cmp2 = icmp sgt i32 %2, 1
  br i1 %cmp2, label %land.lhs.true, label %if.else.69

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @do_animate, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.3, label %if.else.69

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* @animate_num_frames, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %animlayers, align 8
  %6 = load i32, i32* @do_animate_reverse, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.then.3
  store double 1.000000e+00, double* @animate_deform_value, align 8
  %7 = load i32, i32* @animate_num_frames, align 4
  %sub = sub nsw i32 %7, 1
  %conv6 = sitofp i32 %sub to double
  %div = fdiv double -1.000000e+00, %conv6
  store double %div, double* %delta, align 8
  %8 = load i32, i32* @imageID, align 4
  %call7 = call i32 @gimp_image_undo_group_start(i32 %8)
  br label %if.end.12

if.else.8:                                        ; preds = %if.then.3
  store double 0.000000e+00, double* @animate_deform_value, align 8
  %9 = load i32, i32* @animate_num_frames, align 4
  %sub9 = sub nsw i32 %9, 1
  %conv10 = sitofp i32 %sub9 to double
  %div11 = fdiv double 1.000000e+00, %conv10
  store double %div11, double* %delta, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.5
  %10 = load i32, i32* @imageID, align 4
  %call13 = call i32 @gimp_image_get_active_layer(i32 %10)
  store i32 %call13, i32* %layerID, align 4
  store i32 0, i32* @frame_number, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @animate_num_frames, align 4
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0)) #4
  %13 = load i32, i32* %i, align 4
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call16, i32 %13)
  store i8* %call17, i8** %st, align 8
  %14 = load i32, i32* %layerID, align 4
  %call18 = call i32 @gimp_layer_copy(i32 %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %animlayers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %call18, i32* %arrayidx, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32*, i32** %animlayers, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 @gimp_layer_add_alpha(i32 %19)
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32*, i32** %animlayers, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %21, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %23 = load i8*, i8** %st, align 8
  %call24 = call i32 @gimp_item_set_name(i32 %22, i8* %23)
  %24 = load i8*, i8** %st, align 8
  call void @g_free(i8* %24)
  %25 = load i32, i32* @imageID, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i32*, i32** %animlayers, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %27, i64 %idxprom25
  %28 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 @gimp_image_insert_layer(i32 %25, i32 %28, i32 -1, i32 0)
  %29 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %29 to i64
  %30 = load i32*, i32** %animlayers, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %30, i64 %idxprom28
  %31 = load i32, i32* %arrayidx29, align 4
  %call30 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %31)
  store %struct._GimpDrawable* %call30, %struct._GimpDrawable** @destdrawable, align 8
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0)) #4
  %32 = load i32, i32* @frame_number, align 4
  %call32 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call31, i32 %32)
  %33 = load double, double* @animate_deform_value, align 8
  %cmp33 = fcmp ogt double %33, 0.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  call void @iwarp_frame()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.body
  %34 = load double, double* @animate_deform_value, align 8
  %35 = load double, double* %delta, align 8
  %add = fadd double %34, %35
  store double %add, double* @animate_deform_value, align 8
  %36 = load i32, i32* @frame_number, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* @frame_number, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %37 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* @do_animate_ping_pong, align 4
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %if.then.39, label %if.end.68

if.then.39:                                       ; preds = %for.end
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #4
  %call41 = call i32 @gimp_progress_init(i8* %call40)
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.64, %if.then.39
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @animate_num_frames, align 4
  %cmp43 = icmp slt i32 %39, %40
  br i1 %cmp43, label %for.body.45, label %for.end.66

for.body.45:                                      ; preds = %for.cond.42
  %41 = load i32, i32* %i, align 4
  %conv47 = sitofp i32 %41 to double
  %42 = load i32, i32* @animate_num_frames, align 4
  %sub48 = sub nsw i32 %42, 1
  %conv49 = sitofp i32 %sub48 to double
  %div50 = fdiv double %conv47, %conv49
  %call51 = call i32 @gimp_progress_update(double %div50)
  %43 = load i32, i32* @animate_num_frames, align 4
  %44 = load i32, i32* %i, align 4
  %sub52 = sub nsw i32 %43, %44
  %sub53 = sub nsw i32 %sub52, 1
  %idxprom54 = sext i32 %sub53 to i64
  %45 = load i32*, i32** %animlayers, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %call56 = call i32 @gimp_layer_copy(i32 %46)
  store i32 %call56, i32* %layerID, align 4
  %47 = load i32, i32* @imageID, align 4
  %call57 = call i32 @gimp_image_undo_group_end(i32 %47)
  %48 = load i32, i32* %layerID, align 4
  %call58 = call i32 @gimp_layer_add_alpha(i32 %48)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0)) #4
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* @animate_num_frames, align 4
  %add60 = add nsw i32 %49, %50
  %call61 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call59, i32 %add60)
  store i8* %call61, i8** %st46, align 8
  %51 = load i32, i32* %layerID, align 4
  %52 = load i8*, i8** %st46, align 8
  %call62 = call i32 @gimp_item_set_name(i32 %51, i8* %52)
  %53 = load i8*, i8** %st46, align 8
  call void @g_free(i8* %53)
  %54 = load i32, i32* @imageID, align 4
  %55 = load i32, i32* %layerID, align 4
  %call63 = call i32 @gimp_image_insert_layer(i32 %54, i32 %55, i32 -1, i32 0)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.45
  %56 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %56, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.42

for.end.66:                                       ; preds = %for.cond.42
  %call67 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.66, %for.end
  %57 = load i32*, i32** %animlayers, align 8
  %58 = bitcast i32* %57 to i8*
  call void @g_free(i8* %58)
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true, %if.end
  store double 1.000000e+00, double* @animate_deform_value, align 8
  call void @iwarp_frame()
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.end.68
  %59 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  %tobool71 = icmp ne %struct._GimpTile* %59, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  %60 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %60, i32 0)
  store %struct._GimpTile* null, %struct._GimpTile** @tile, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.70
  ret void
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_free(i8*) #1

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @iwarp_init() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* @xl, i32* @yl, i32* @sel_width, i32* @sel_height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call1)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @xl, align 4
  %3 = load i32, i32* @sel_width, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* @xh, align 4
  %4 = load i32, i32* @yl, align 4
  %5 = load i32, i32* @sel_height, align 4
  %add2 = add nsw i32 %4, %5
  store i32 %add2, i32* @yh, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_bpp(i32 %7)
  store i32 %call4, i32* @image_bpp, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_item_is_layer(i32 %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_layer_get_lock_alpha(i32 %11)
  store i32 %call10, i32* @lock_alpha, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  store i32 0, i32* @lock_alpha, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %12 = load i32, i32* @image_bpp, align 4
  store i32 %12, i32* @preview_bpp, align 4
  %call12 = call i32 @gimp_tile_width() #5
  store i32 %call12, i32* @tile_width, align 4
  %call13 = call i32 @gimp_tile_height() #5
  store i32 %call13, i32* @tile_height, align 4
  %13 = load i32, i32* @sel_width, align 4
  %14 = load i32, i32* @tile_width, align 4
  %div = sdiv i32 %13, %14
  %add14 = add nsw i32 %div, 1
  %conv = sext i32 %add14 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  call void @iwarp_preview_init()
  call void @iwarp_cpy_images()
  %15 = load i32, i32* @preview_width, align 4
  %16 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %15, %16
  %conv15 = sext i32 %mul to i64
  %call16 = call noalias i8* @g_malloc0_n(i64 %conv15, i64 16)
  %17 = bitcast i8* %call16 to %struct._GimpVector2*
  store %struct._GimpVector2* %17, %struct._GimpVector2** @deform_vectors, align 8
  %call17 = call noalias i8* @g_malloc_n(i64 251001, i64 16)
  %18 = bitcast i8* %call17 to %struct._GimpVector2*
  store %struct._GimpVector2* %18, %struct._GimpVector2** @deform_area_vectors, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %19 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %19, 250
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %conv19 = sitofp i32 %20 to double
  %div20 = fdiv double %conv19, 2.500000e+02
  %call21 = call double @sqrt(double %div20) #4
  %mul22 = fmul double %call21, 0x400921FB54442D18
  %call23 = call double @cos(double %mul22) #4
  %add24 = fadd double %call23, 1.000000e+00
  %mul25 = fmul double %add24, 5.000000e-01
  %call26 = call double @pow(double %mul25, double 7.000000e-01) #4
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom
  store double %call26, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

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

; Function Attrs: nounwind uwtable
define internal void @iwarp_dialog_response_update(%struct._GtkWidget* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  %3 = load i32, i32* @iwarp_changed, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %2, i32 1, i32 %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  %7 = load i32, i32* @iwarp_changed, align 4
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %6, i32 -5, i32 %7)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  call void @iwarp_cpy_images()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @preview_width, align 4
  %3 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %2, %3
  %cmp = icmp slt i32 %1, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %5, i64 %idxprom
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %7, i64 %idxprom1
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx2, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @iwarp_changed, align 4
  %9 = load i32, i32* @preview_width, align 4
  %10 = load i32, i32* @preview_height, align 4
  call void @iwarp_update_preview(i32 0, i32 0, i32 %9, i32 %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @iwarp_dialog_response_update(%struct._GtkWidget* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.iwarp_interface, %struct.iwarp_interface* @wint, i32 0, i32 0), align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.3
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_preview_build(%struct._GtkWidget* %dialog, %struct._GtkWidget* %vbox) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %vbox.addr = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GtkWidget* %vbox, %struct._GtkWidget** %vbox.addr, align 8
  %call = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 1, i32 1, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call5 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call5, %struct._GtkWidget** @preview, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %9 = load i32, i32* @preview_width, align 4
  %10 = load i32, i32* @preview_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %8, i32 %9, i32 %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %16, i32 808)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @iwarp_realize_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GtkWidget*)* @iwarp_event_callback to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @iwarp_resize_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_hint_box_new(i8*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @iwarp_settings_dialog(%struct._GtkWidget* %dialog, %struct._GtkWidget* %notebook) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %vbox3 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  %widget = alloca [3 x %struct._GtkWidget*], align 16
  %i = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %hbox, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %10, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %13, %struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2), align 4
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #4
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #4
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #4
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #4
  %arrayidx = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 0
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #4
  %arrayidx17 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 1
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)) #4
  %arrayidx19 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 2
  %call20 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2) to i8*), i32 %16, i8* %call12, i32 2, i8* null, i8* %call13, i32 0, i8* null, i8* %call14, i32 4, i8* null, i8* %call15, i32 3, %struct._GtkWidget** %arrayidx, i8* %call16, i32 1, %struct._GtkWidget** %arrayidx17, i8* %call18, i32 5, %struct._GtkWidget** %arrayidx19, i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %vbox2, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call21)
  %19 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %vbox3, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call24)
  %24 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 1, i32 1, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %27, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx26, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call27 = call i8* @g_object_ref(i8* %30)
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom28
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx29, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call30)
  %35 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %36 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom32
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx33, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %35, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call34)
  %40 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %41 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom36
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx37, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom38
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx39, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds [3 x %struct._GtkWidget*], [3 x %struct._GtkWidget*]* %widget, i32 0, i64 %idxprom40
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx41, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  call void @g_object_unref(i8* %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call42 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %table, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call43)
  %51 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %51, i32 6)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call45)
  %54 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %54, i32 6)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call47)
  %57 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call49)
  %62 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)) #4
  %63 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %conv = sitofp i32 %63 to double
  %call52 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %62, i32 0, i32 0, i8* %call51, i32 100, i32 4, double %conv, double 5.000000e+00, double 2.500000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call52, %struct._GtkObject** %scale_data, align 8
  %64 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %65 = bitcast %struct._GtkObject* %64 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (%struct.iwarp_vals_t* @iwarp_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call54)
  %68 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)) #4
  %69 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %call57 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %68, i32 0, i32 1, i8* %call56, i32 100, i32 4, double %69, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call57, %struct._GtkObject** %scale_data, align 8
  %70 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %call60 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %button, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_toggle_button_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call61)
  %74 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkToggleButton*
  %75 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %74, i32 %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call63)
  %78 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 0, i32 0, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call66 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %frame, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call67)
  %85 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 0, i32 0, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0)) #4
  %call70 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call69)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %button, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_toggle_button_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call71)
  %90 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkToggleButton*
  %91 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %90, i32 %91)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_frame_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call73)
  %94 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkFrame*
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %94, %struct._GtkWidget* %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %98 = bitcast %struct._GtkWidget* %97 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call76 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %table, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_table_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call77)
  %101 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %101, i32 6)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call79)
  %104 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %104, i32 6)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_container_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call81)
  %107 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkContainer*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %107, %struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %call83 = call %struct._GBinding* @g_object_bind_property(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 2)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call84)
  %116 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #4
  %117 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 6), align 4
  %conv87 = sitofp i32 %117 to double
  %call88 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %116, i32 0, i32 0, i8* %call86, i32 100, i32 5, double %conv87, double 1.000000e+00, double 5.000000e+00, double 1.100000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call88, %struct._GtkObject** %scale_data, align 8
  %118 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %119 = bitcast %struct._GtkObject* %118 to i8*
  %call89 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call90)
  %122 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)) #4
  %123 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 5), align 8
  %call93 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %122, i32 0, i32 1, i8* %call92, i32 100, i32 5, double %123, double 1.000000e+00, double 1.000000e+01, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call93, %struct._GtkObject** %scale_data, align 8
  %124 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %125 = bitcast %struct._GtkObject* %124 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_notebook_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call95)
  %129 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkNotebook*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #4
  %call98 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call97)
  %call99 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %129, %struct._GtkWidget* %130, %struct._GtkWidget* %call98)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_animate_dialog(%struct._GtkWidget* %dialog, %struct._GtkWidget* %notebook) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %scale_data = alloca %struct._GtkObject*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)) #4
  %call7 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %button, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  %11 = load i32, i32* @do_animate, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %10, i32 %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_frame_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFrame*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @do_animate to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call13 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %table, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %21, i32 6)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %24, i32 6)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %27, %struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call20 = call %struct._GBinding* @g_object_bind_property(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 2)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0)) #4
  %37 = load i32, i32* @animate_num_frames, align 4
  %conv = sitofp i32 %37 to double
  %call24 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %36, i32 0, i32 0, i8* %call23, i32 100, i32 0, double %conv, double 2.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call24, %struct._GtkObject** %scale_data, align 8
  %38 = load %struct._GtkObject*, %struct._GtkObject** %scale_data, align 8
  %39 = bitcast %struct._GtkObject* %38 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* @animate_num_frames to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %42, %struct._GtkWidget* %43, i32 0, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @do_animate_reverse to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #4
  %call32 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call31)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %button, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %49, %struct._GtkWidget* %50, i32 0, i32 3, i32 2, i32 3, i32 5, i32 5, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @do_animate_ping_pong to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_notebook_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call36)
  %57 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkNotebook*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0)) #4
  %call39 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call38)
  %call40 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %57, %struct._GtkWidget* %58, %struct._GtkWidget* %call39)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_update_preview(i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  %0 = load i32, i32* %x0.addr, align 4
  %1 = load i32, i32* @preview_width, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* @preview_width, align 4
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %x0.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %4 = load i32, i32* %x0.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 0, %cond.true.2 ], [ %4, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ %2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond5, i32* %x0.addr, align 4
  %5 = load i32, i32* %y0.addr, align 4
  %6 = load i32, i32* @preview_height, align 4
  %cmp6 = icmp sgt i32 %5, %6
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  %7 = load i32, i32* @preview_height, align 4
  br label %cond.end.14

cond.false.8:                                     ; preds = %cond.end.4
  %8 = load i32, i32* %y0.addr, align 4
  %cmp9 = icmp slt i32 %8, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.false.8
  %9 = load i32, i32* %y0.addr, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i32 [ 0, %cond.true.10 ], [ %9, %cond.false.11 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.true.7
  %cond15 = phi i32 [ %7, %cond.true.7 ], [ %cond13, %cond.end.12 ]
  store i32 %cond15, i32* %y0.addr, align 4
  %10 = load i32, i32* %x1.addr, align 4
  %11 = load i32, i32* @preview_width, align 4
  %cmp16 = icmp sgt i32 %10, %11
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end.14
  %12 = load i32, i32* @preview_width, align 4
  br label %cond.end.24

cond.false.18:                                    ; preds = %cond.end.14
  %13 = load i32, i32* %x1.addr, align 4
  %14 = load i32, i32* %x0.addr, align 4
  %cmp19 = icmp slt i32 %13, %14
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.18
  %15 = load i32, i32* %x0.addr, align 4
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.false.18
  %16 = load i32, i32* %x1.addr, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %15, %cond.true.20 ], [ %16, %cond.false.21 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.17
  %cond25 = phi i32 [ %12, %cond.true.17 ], [ %cond23, %cond.end.22 ]
  store i32 %cond25, i32* %x1.addr, align 4
  %17 = load i32, i32* %y1.addr, align 4
  %18 = load i32, i32* @preview_height, align 4
  %cmp26 = icmp sgt i32 %17, %18
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end.24
  %19 = load i32, i32* @preview_height, align 4
  br label %cond.end.34

cond.false.28:                                    ; preds = %cond.end.24
  %20 = load i32, i32* %y1.addr, align 4
  %21 = load i32, i32* %y0.addr, align 4
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.28
  %22 = load i32, i32* %y0.addr, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.false.28
  %23 = load i32, i32* %y1.addr, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %22, %cond.true.30 ], [ %23, %cond.false.31 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end.32, %cond.true.27
  %cond35 = phi i32 [ %19, %cond.true.27 ], [ %cond33, %cond.end.32 ]
  store i32 %cond35, i32* %y1.addr, align 4
  %24 = load i32, i32* %x1.addr, align 4
  %25 = load i32, i32* %x0.addr, align 4
  %cmp36 = icmp sgt i32 %24, %25
  br i1 %cmp36, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.34
  %26 = load i32, i32* %y1.addr, align 4
  %27 = load i32, i32* %y0.addr, align 4
  %cmp37 = icmp sgt i32 %26, %27
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call)
  %30 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpPreviewArea*
  %31 = load i32, i32* %x0.addr, align 4
  %32 = load i32, i32* %y0.addr, align 4
  %33 = load i32, i32* %x1.addr, align 4
  %34 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %33, %34
  %35 = load i32, i32* %y1.addr, align 4
  %36 = load i32, i32* %y0.addr, align 4
  %sub39 = sub nsw i32 %35, %36
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 0
  %38 = load i32, i32* %drawable_id, align 4
  %call40 = call i32 @gimp_drawable_type(i32 %38)
  %39 = load i8*, i8** @dstimage, align 8
  %40 = load i32, i32* %y0.addr, align 4
  %41 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %40, %41
  %42 = load i32, i32* %x0.addr, align 4
  %add = add nsw i32 %mul, %42
  %43 = load i32, i32* @preview_bpp, align 4
  %mul41 = mul nsw i32 %add, %43
  %idx.ext = sext i32 %mul41 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %44 = load i32, i32* @preview_width, align 4
  %45 = load i32, i32* @preview_bpp, align 4
  %mul42 = mul nsw i32 %44, %45
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %30, i32 %31, i32 %32, i32 %sub, i32 %sub39, i32 %call40, i8* %add.ptr, i32 %mul42)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end.34
  ret void
}

declare void @gtk_main() #1

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

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_item_is_layer(i32) #1

declare i32 @gimp_layer_get_lock_alpha(i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_preview_init() #0 {
entry:
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %xi = alloca i32, align 4
  %i = alloca i32, align 4
  %srcrgn = alloca %struct._GimpPixelRgn, align 8
  %pts = alloca i8*, align 8
  %linebuffer = alloca i8*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store i8* null, i8** %linebuffer, align 8
  %0 = load i32, i32* @sel_width, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* @max_current_preview_width, align 4
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %dx, align 8
  %2 = load i32, i32* @sel_height, align 4
  %conv2 = sitofp i32 %2 to double
  %3 = load i32, i32* @max_current_preview_height, align 4
  %conv3 = sitofp i32 %3 to double
  %div4 = fdiv double %conv2, %conv3
  store double %div4, double* %dy, align 8
  %4 = load double, double* %dx, align 8
  %5 = load double, double* %dy, align 8
  %cmp = fcmp ogt double %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %dx, align 8
  store double %6, double* @pre2img, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load double, double* %dy, align 8
  store double %7, double* @pre2img, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %dx, align 8
  %cmp6 = fcmp ole double %8, 1.000000e+00
  br i1 %cmp6, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %9 = load double, double* %dy, align 8
  %cmp8 = fcmp ole double %9, 1.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store double 1.000000e+00, double* @pre2img, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %10 = load double, double* @pre2img, align 8
  %div12 = fdiv double 1.000000e+00, %10
  store double %div12, double* @img2pre, align 8
  %11 = load i32, i32* @sel_width, align 4
  %conv13 = sitofp i32 %11 to double
  %12 = load double, double* @pre2img, align 8
  %div14 = fdiv double %conv13, %12
  %conv15 = fptosi double %div14 to i32
  store i32 %conv15, i32* @preview_width, align 4
  %13 = load i32, i32* @sel_height, align 4
  %conv16 = sitofp i32 %13 to double
  %14 = load double, double* @pre2img, align 8
  %div17 = fdiv double %conv16, %14
  %conv18 = fptosi double %div17 to i32
  store i32 %conv18, i32* @preview_height, align 4
  %15 = load i8*, i8** @srcimage, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.end.11
  %16 = load i8*, i8** @srcimage, align 8
  %17 = load i32, i32* @preview_width, align 4
  %18 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %17, %18
  %19 = load i32, i32* @image_bpp, align 4
  %mul20 = mul nsw i32 %mul, %19
  %conv21 = sext i32 %mul20 to i64
  %call = call i8* @g_realloc_n(i8* %16, i64 %conv21, i64 1)
  store i8* %call, i8** @srcimage, align 8
  br label %if.end.31

if.else.22:                                       ; preds = %if.end.11
  %20 = load i32, i32* @preview_width, align 4
  %21 = load i32, i32* @preview_height, align 4
  %mul23 = mul nsw i32 %20, %21
  %22 = load i32, i32* @image_bpp, align 4
  %mul24 = mul nsw i32 %mul23, %22
  %conv25 = sext i32 %mul24 to i64
  %call26 = call noalias i8* @g_malloc_n(i64 %conv25, i64 1)
  store i8* %call26, i8** @srcimage, align 8
  %23 = load i32, i32* @preview_width, align 4
  %24 = load i32, i32* @preview_height, align 4
  %mul27 = mul nsw i32 %23, %24
  %25 = load i32, i32* @preview_bpp, align 4
  %mul28 = mul nsw i32 %mul27, %25
  %conv29 = sext i32 %mul28 to i64
  %call30 = call noalias i8* @g_malloc_n(i64 %conv29, i64 1)
  store i8* %call30, i8** @dstimage, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.22, %if.then.19
  %26 = load i32, i32* @sel_width, align 4
  %27 = load i32, i32* @image_bpp, align 4
  %mul32 = mul nsw i32 %26, %27
  %conv33 = sext i32 %mul32 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv33, i64 1)
  store i8* %call34, i8** %linebuffer, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %29 = load i32, i32* @xl, align 4
  %30 = load i32, i32* @yl, align 4
  %31 = load i32, i32* @sel_width, align 4
  %32 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcrgn, %struct._GimpDrawable* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 0, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.31
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* @preview_height, align 4
  %cmp35 = icmp slt i32 %33, %34
  br i1 %cmp35, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %35 = load i8*, i8** %linebuffer, align 8
  %36 = load i32, i32* @xl, align 4
  %37 = load double, double* @pre2img, align 8
  %38 = load i32, i32* %y, align 4
  %conv37 = sitofp i32 %38 to double
  %mul38 = fmul double %37, %conv37
  %conv39 = fptosi double %mul38 to i32
  %39 = load i32, i32* @yl, align 4
  %add = add nsw i32 %conv39, %39
  %40 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcrgn, i8* %35, i32 %36, i32 %add, i32 %40)
  store i32 0, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.56, %for.body
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* @preview_width, align 4
  %cmp41 = icmp slt i32 %41, %42
  br i1 %cmp41, label %for.body.43, label %for.end.58

for.body.43:                                      ; preds = %for.cond.40
  %43 = load i8*, i8** @srcimage, align 8
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* @preview_width, align 4
  %mul44 = mul nsw i32 %44, %45
  %46 = load i32, i32* %x, align 4
  %add45 = add nsw i32 %mul44, %46
  %47 = load i32, i32* @image_bpp, align 4
  %mul46 = mul nsw i32 %add45, %47
  %idx.ext = sext i32 %mul46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr, i8** %pts, align 8
  %48 = load double, double* @pre2img, align 8
  %49 = load i32, i32* %x, align 4
  %conv47 = sitofp i32 %49 to double
  %mul48 = fmul double %48, %conv47
  %conv49 = fptosi double %mul48 to i32
  store i32 %conv49, i32* %xi, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %for.body.43
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* @image_bpp, align 4
  %cmp51 = icmp slt i32 %50, %51
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.50
  %52 = load i32, i32* %xi, align 4
  %53 = load i32, i32* @image_bpp, align 4
  %mul54 = mul nsw i32 %52, %53
  %54 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %mul54, %54
  %idxprom = sext i32 %add55 to i64
  %55 = load i8*, i8** %linebuffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %55, i64 %idxprom
  %56 = load i8, i8* %arrayidx, align 1
  %57 = load i8*, i8** %pts, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %pts, align 8
  store i8 %56, i8* %57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %58 = load i32, i32* %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.50

for.end:                                          ; preds = %for.cond.50
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %59 = load i32, i32* %x, align 4
  %inc57 = add nsw i32 %59, 1
  store i32 %inc57, i32* %x, align 4
  br label %for.cond.40

for.end.58:                                       ; preds = %for.cond.40
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %60 = load i32, i32* %y, align 4
  %inc60 = add nsw i32 %60, 1
  store i32 %inc60, i32* %y, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %61 = load i8*, i8** %linebuffer, align 8
  call void @g_free(i8* %61)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_cpy_images() #0 {
entry:
  %0 = load i8*, i8** @dstimage, align 8
  %1 = load i8*, i8** @srcimage, align 8
  %2 = load i32, i32* @preview_width, align 4
  %3 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* @preview_bpp, align 4
  %mul1 = mul nsw i32 %mul, %4
  %conv = sext i32 %mul1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %conv, i32 1, i1 false)
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i8* @g_realloc_n(i8*, i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_realize_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 34)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %3 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %3)
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iwarp_event_callback(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GtkWidget* %dialog) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %bevent3 = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb.2
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x, align 8
  %conv = fptosi double %5 to i32
  store i32 %conv, i32* @lastx, align 4
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 5
  %7 = load double, double* %y, align 8
  %conv1 = fptosi double %7 to i32
  store i32 %conv1, i32* @lasty, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %9 = bitcast %union._GdkEvent* %8 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %9, %struct._GdkEventButton** %bevent3, align 8
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent3, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 7
  %11 = load i32, i32* %state, align 4
  %and = and i32 %11, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %sw.bb.2
  %12 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2), align 4
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent3, align 8
  %x6 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 4
  %14 = load double, double* %x6, align 8
  %conv7 = fptosi double %14 to i32
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent3, align 8
  %y8 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 5
  %16 = load double, double* %y8, align 8
  %conv9 = fptosi double %16 to i32
  %17 = load i32, i32* @lastx, align 4
  %18 = load i32, i32* @lasty, align 4
  call void @iwarp_move(i32 %conv7, i32 %conv9, i32 %17, i32 %18)
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent3, align 8
  %x10 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 4
  %20 = load double, double* %x10, align 8
  %conv11 = fptosi double %20 to i32
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent3, align 8
  %y12 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 5
  %22 = load double, double* %y12, align 8
  %conv13 = fptosi double %22 to i32
  call void @iwarp_deform(i32 %conv11, i32 %conv13, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @iwarp_dialog_response_update(%struct._GtkWidget* %23)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %sw.bb.2
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %24 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %25 = bitcast %union._GdkEvent* %24 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %25, %struct._GdkEventMotion** %mevent, align 8
  %26 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state16 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %26, i32 0, i32 7
  %27 = load i32, i32* %state16, align 4
  %and17 = and i32 %27, 256
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %sw.bb.15
  %28 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2), align 4
  %cmp20 = icmp eq i32 %28, 2
  br i1 %cmp20, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %if.then.19
  %29 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x23 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %29, i32 0, i32 4
  %30 = load double, double* %x23, align 8
  %conv24 = fptosi double %30 to i32
  %31 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y25 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %31, i32 0, i32 5
  %32 = load double, double* %y25, align 8
  %conv26 = fptosi double %32 to i32
  %33 = load i32, i32* @lastx, align 4
  %34 = load i32, i32* @lasty, align 4
  call void @iwarp_move(i32 %conv24, i32 %conv26, i32 %33, i32 %34)
  br label %if.end.32

if.else.27:                                       ; preds = %if.then.19
  %35 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x28 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %35, i32 0, i32 4
  %36 = load double, double* %x28, align 8
  %conv29 = fptosi double %36 to i32
  %37 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y30 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %37, i32 0, i32 5
  %38 = load double, double* %y30, align 8
  %conv31 = fptosi double %38 to i32
  call void @iwarp_deform(i32 %conv29, i32 %conv31, double 0.000000e+00, double 0.000000e+00)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.27, %if.then.22
  %39 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x33 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %39, i32 0, i32 4
  %40 = load double, double* %x33, align 8
  %conv34 = fptosi double %40 to i32
  store i32 %conv34, i32* @lastx, align 4
  %41 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y35 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %41, i32 0, i32 5
  %42 = load double, double* %y35, align 8
  %conv36 = fptosi double %42 to i32
  store i32 %conv36, i32* @lasty, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.32, %sw.bb.15
  %43 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %43)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.37, %if.end.14, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_resize_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* @resize_idle, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @resize_idle, align 4
  %call = call i32 @g_source_remove(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %call1 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* bitcast (i32 (%struct._GtkWidget*)* @iwarp_resize_idle to i32 (i8*)*), i8* %3, void (i8*)* null)
  store i32 %call1, i32* @resize_idle, align 4
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_move(i32 %x, i32 %y, i32 %xx, i32 %yy) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %xx.addr = alloca i32, align 4
  %yy.addr = alloca i32, align 4
  %l = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %xf = alloca double, align 8
  %yf = alloca double, align 8
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %xx, i32* %xx.addr, align 4
  store i32 %yy, i32* %yy.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %xx.addr, align 4
  %sub = sub nsw i32 %0, %1
  %conv = sitofp i32 %sub to double
  store double %conv, double* %dx, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %yy.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %conv2 = sitofp i32 %sub1 to double
  store double %conv2, double* %dy, align 8
  %4 = load double, double* %dx, align 8
  %5 = load double, double* %dx, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %dy, align 8
  %7 = load double, double* %dy, align 8
  %mul3 = fmul double %6, %7
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #4
  store double %call, double* %l, align 8
  %8 = load double, double* %l, align 8
  %mul4 = fmul double %8, 2.000000e+00
  %9 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %conv5 = sitofp i32 %9 to double
  %div = fdiv double %mul4, %conv5
  %conv6 = fptosi double %div to i32
  %add7 = add nsw i32 %conv6, 1
  store i32 %add7, i32* %num, align 4
  %10 = load i32, i32* %num, align 4
  %conv8 = sitofp i32 %10 to double
  %11 = load double, double* %dx, align 8
  %div9 = fdiv double %11, %conv8
  store double %div9, double* %dx, align 8
  %12 = load i32, i32* %num, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load double, double* %dy, align 8
  %div11 = fdiv double %13, %conv10
  store double %div11, double* %dy, align 8
  %14 = load i32, i32* %xx.addr, align 4
  %conv12 = sitofp i32 %14 to double
  %15 = load double, double* %dx, align 8
  %add13 = fadd double %conv12, %15
  store double %add13, double* %xf, align 8
  %16 = load i32, i32* %yy.addr, align 4
  %conv14 = sitofp i32 %16 to double
  %17 = load double, double* %dy, align 8
  %add15 = fadd double %conv14, %17
  store double %add15, double* %yf, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load double, double* %xf, align 8
  %conv17 = fptosi double %20 to i32
  store i32 %conv17, i32* %x0, align 4
  %21 = load double, double* %yf, align 8
  %conv18 = fptosi double %21 to i32
  store i32 %conv18, i32* %y0, align 4
  %22 = load i32, i32* %x0, align 4
  %23 = load i32, i32* %y0, align 4
  %24 = load double, double* %dx, align 8
  %sub19 = fsub double -0.000000e+00, %24
  %25 = load double, double* %dy, align 8
  %sub20 = fsub double -0.000000e+00, %25
  call void @iwarp_deform(i32 %22, i32 %23, double %sub19, double %sub20)
  %26 = load double, double* %dx, align 8
  %27 = load double, double* %xf, align 8
  %add21 = fadd double %27, %26
  store double %add21, double* %xf, align 8
  %28 = load double, double* %dy, align 8
  %29 = load double, double* %yf, align 8
  %add22 = fadd double %29, %28
  store double %add22, double* %yf, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_deform(i32 %x, i32 %y, double %vx, double %vy) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %vx.addr = alloca double, align 8
  %vy.addr = alloca double, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %ptr = alloca i32, align 4
  %fptr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %radius2 = alloca i32, align 4
  %length2 = alloca i32, align 4
  %deform_value = alloca double, align 8
  %xn = alloca double, align 8
  %yn = alloca double, align 8
  %nvx = alloca double, align 8
  %nvy = alloca double, align 8
  %emh = alloca double, align 8
  %em = alloca double, align 8
  %edge_width = alloca double, align 8
  %xv = alloca double, align 8
  %yv = alloca double, align 8
  %color = alloca [4 x i8], align 1
  %alpha = alloca i8, align 1
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store double %vx, double* %vx.addr, align 8
  store double %vy, double* %vy.addr, align 8
  store double 0.000000e+00, double* %nvx, align 8
  store double 0.000000e+00, double* %nvy, align 8
  store i8 -1, i8* %alpha, align 1
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %sub1 = sub nsw i32 0, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub1, %cond.false ]
  store i32 %cond, i32* %x0, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, i32* @preview_width, align 4
  %cmp2 = icmp sge i32 %add, %6
  br i1 %cmp2, label %cond.true.3, label %cond.false.6

cond.true.3:                                      ; preds = %cond.end
  %7 = load i32, i32* @preview_width, align 4
  %8 = load i32, i32* %x.addr, align 4
  %sub4 = sub nsw i32 %7, %8
  %sub5 = sub nsw i32 %sub4, 1
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %9 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.3
  %cond8 = phi i32 [ %sub5, %cond.true.3 ], [ %9, %cond.false.6 ]
  store i32 %cond8, i32* %x1, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end.7
  %12 = load i32, i32* %y.addr, align 4
  %sub11 = sub nsw i32 0, %12
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end.7
  %13 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %sub13 = sub nsw i32 0, %13
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.10
  %cond15 = phi i32 [ %sub11, %cond.true.10 ], [ %sub13, %cond.false.12 ]
  store i32 %cond15, i32* %y0, align 4
  %14 = load i32, i32* %y.addr, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add16 = add nsw i32 %14, %15
  %16 = load i32, i32* @preview_height, align 4
  %cmp17 = icmp sge i32 %add16, %16
  br i1 %cmp17, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.end.14
  %17 = load i32, i32* @preview_height, align 4
  %18 = load i32, i32* %y.addr, align 4
  %sub19 = sub nsw i32 %17, %18
  %sub20 = sub nsw i32 %sub19, 1
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.14
  %19 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.18
  %cond23 = phi i32 [ %sub20, %cond.true.18 ], [ %19, %cond.false.21 ]
  store i32 %cond23, i32* %y1, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %mul = mul nsw i32 %20, %21
  store i32 %mul, i32* %radius2, align 4
  %22 = load i32, i32* %y0, align 4
  store i32 %22, i32* %yi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.327, %cond.end.22
  %23 = load i32, i32* %yi, align 4
  %24 = load i32, i32* %y1, align 4
  %cmp24 = icmp sle i32 %23, %24
  br i1 %cmp24, label %for.body, label %for.end.329

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %x0, align 4
  store i32 %25, i32* %xi, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %26 = load i32, i32* %xi, align 4
  %27 = load i32, i32* %x1, align 4
  %cmp26 = icmp sle i32 %26, %27
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %28 = load i32, i32* %xi, align 4
  %29 = load i32, i32* %xi, align 4
  %mul28 = mul nsw i32 %28, %29
  %30 = load i32, i32* %yi, align 4
  %31 = load i32, i32* %yi, align 4
  %mul29 = mul nsw i32 %30, %31
  %add30 = add nsw i32 %mul28, %mul29
  %mul31 = mul nsw i32 %add30, 250
  %32 = load i32, i32* %radius2, align 4
  %div = sdiv i32 %mul31, %32
  store i32 %div, i32* %length2, align 4
  %33 = load i32, i32* %length2, align 4
  %cmp32 = icmp slt i32 %33, 250
  br i1 %cmp32, label %if.then, label %if.end.326

if.then:                                          ; preds = %for.body.27
  %34 = load i32, i32* %y.addr, align 4
  %35 = load i32, i32* %yi, align 4
  %add33 = add nsw i32 %34, %35
  %36 = load i32, i32* @preview_width, align 4
  %mul34 = mul nsw i32 %add33, %36
  %37 = load i32, i32* %x.addr, align 4
  %add35 = add nsw i32 %mul34, %37
  %38 = load i32, i32* %xi, align 4
  %add36 = add nsw i32 %add35, %38
  store i32 %add36, i32* %ptr, align 4
  %39 = load i32, i32* %yi, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add37 = add nsw i32 %39, %40
  %41 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %mul38 = mul nsw i32 %41, 2
  %add39 = add nsw i32 %mul38, 1
  %mul40 = mul nsw i32 %add37, %add39
  %42 = load i32, i32* %xi, align 4
  %add41 = add nsw i32 %mul40, %42
  %43 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add42 = add nsw i32 %add41, %43
  store i32 %add42, i32* %fptr, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2), align 4
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
    i32 5, label %sw.bb.59
    i32 4, label %sw.bb.69
    i32 2, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %if.then
  %45 = load i32, i32* %length2, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom
  %46 = load double, double* %arrayidx, align 8
  %mul43 = fmul double %46, 1.000000e-01
  %47 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul44 = fmul double %mul43, %47
  store double %mul44, double* %deform_value, align 8
  %48 = load double, double* %deform_value, align 8
  %sub45 = fsub double -0.000000e+00, %48
  %49 = load i32, i32* %xi, align 4
  %conv = sitofp i32 %49 to double
  %mul46 = fmul double %sub45, %conv
  store double %mul46, double* %nvx, align 8
  %50 = load double, double* %deform_value, align 8
  %sub47 = fsub double -0.000000e+00, %50
  %51 = load i32, i32* %yi, align 4
  %conv48 = sitofp i32 %51 to double
  %mul49 = fmul double %sub47, %conv48
  store double %mul49, double* %nvy, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.then
  %52 = load i32, i32* %length2, align 4
  %idxprom51 = sext i32 %52 to i64
  %arrayidx52 = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom51
  %53 = load double, double* %arrayidx52, align 8
  %mul53 = fmul double %53, 1.000000e-01
  %54 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul54 = fmul double %mul53, %54
  store double %mul54, double* %deform_value, align 8
  %55 = load double, double* %deform_value, align 8
  %56 = load i32, i32* %xi, align 4
  %conv55 = sitofp i32 %56 to double
  %mul56 = fmul double %55, %conv55
  store double %mul56, double* %nvx, align 8
  %57 = load double, double* %deform_value, align 8
  %58 = load i32, i32* %yi, align 4
  %conv57 = sitofp i32 %58 to double
  %mul58 = fmul double %57, %conv57
  store double %mul58, double* %nvy, align 8
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.then
  %59 = load i32, i32* %length2, align 4
  %idxprom60 = sext i32 %59 to i64
  %arrayidx61 = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom60
  %60 = load double, double* %arrayidx61, align 8
  %61 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul62 = fmul double %60, %61
  %mul63 = fmul double %mul62, 5.000000e-01
  store double %mul63, double* %deform_value, align 8
  %62 = load double, double* %deform_value, align 8
  %63 = load i32, i32* %yi, align 4
  %conv64 = sitofp i32 %63 to double
  %mul65 = fmul double %62, %conv64
  store double %mul65, double* %nvx, align 8
  %64 = load double, double* %deform_value, align 8
  %sub66 = fsub double -0.000000e+00, %64
  %65 = load i32, i32* %xi, align 4
  %conv67 = sitofp i32 %65 to double
  %mul68 = fmul double %sub66, %conv67
  store double %mul68, double* %nvy, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then
  %66 = load i32, i32* %length2, align 4
  %idxprom70 = sext i32 %66 to i64
  %arrayidx71 = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom70
  %67 = load double, double* %arrayidx71, align 8
  %68 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul72 = fmul double %67, %68
  %mul73 = fmul double %mul72, 5.000000e-01
  store double %mul73, double* %deform_value, align 8
  %69 = load double, double* %deform_value, align 8
  %sub74 = fsub double -0.000000e+00, %69
  %70 = load i32, i32* %yi, align 4
  %conv75 = sitofp i32 %70 to double
  %mul76 = fmul double %sub74, %conv75
  store double %mul76, double* %nvx, align 8
  %71 = load double, double* %deform_value, align 8
  %72 = load i32, i32* %xi, align 4
  %conv77 = sitofp i32 %72 to double
  %mul78 = fmul double %71, %conv77
  store double %mul78, double* %nvy, align 8
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.then
  %73 = load i32, i32* %length2, align 4
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom80
  %74 = load double, double* %arrayidx81, align 8
  %75 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul82 = fmul double %74, %75
  store double %mul82, double* %deform_value, align 8
  %76 = load double, double* %deform_value, align 8
  %77 = load double, double* %vx.addr, align 8
  %mul83 = fmul double %76, %77
  store double %mul83, double* %nvx, align 8
  %78 = load double, double* %deform_value, align 8
  %79 = load double, double* %vy.addr, align 8
  %mul84 = fmul double %78, %79
  store double %mul84, double* %nvy, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.79, %sw.bb.69, %sw.bb.59, %sw.bb.50, %sw.bb
  %80 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 2), align 4
  %cmp85 = icmp eq i32 %80, 3
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %sw.epilog
  %81 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 1), align 8
  %mul88 = fmul double 5.000000e-01, %81
  %82 = load i32, i32* %length2, align 4
  %idxprom89 = sext i32 %82 to i64
  %arrayidx90 = getelementptr inbounds [250 x double], [250 x double]* @filter, i32 0, i64 %idxprom89
  %83 = load double, double* %arrayidx90, align 8
  %mul91 = fmul double %mul88, %83
  %sub92 = fsub double 1.000000e+00, %mul91
  store double %sub92, double* %deform_value, align 8
  %84 = load double, double* %deform_value, align 8
  %85 = load i32, i32* %ptr, align 4
  %idxprom93 = sext i32 %85 to i64
  %86 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx94 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %86, i64 %idxprom93
  %x95 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx94, i32 0, i32 0
  %87 = load double, double* %x95, align 8
  %mul96 = fmul double %84, %87
  %88 = load i32, i32* %fptr, align 4
  %idxprom97 = sext i32 %88 to i64
  %89 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx98 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %89, i64 %idxprom97
  %x99 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx98, i32 0, i32 0
  store double %mul96, double* %x99, align 8
  %90 = load double, double* %deform_value, align 8
  %91 = load i32, i32* %ptr, align 4
  %idxprom100 = sext i32 %91 to i64
  %92 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %92, i64 %idxprom100
  %y102 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx101, i32 0, i32 1
  %93 = load double, double* %y102, align 8
  %mul103 = fmul double %90, %93
  %94 = load i32, i32* %fptr, align 4
  %idxprom104 = sext i32 %94 to i64
  %95 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx105 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %95, i64 %idxprom104
  %y106 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx105, i32 0, i32 1
  store double %mul103, double* %y106, align 8
  br label %if.end.234

if.else:                                          ; preds = %sw.epilog
  %96 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %conv107 = sitofp i32 %96 to double
  %mul108 = fmul double 2.000000e-01, %conv107
  store double %mul108, double* %edge_width, align 8
  store double 1.000000e+00, double* %em, align 8
  store double 1.000000e+00, double* %emh, align 8
  %97 = load i32, i32* %x.addr, align 4
  %98 = load i32, i32* %xi, align 4
  %add109 = add nsw i32 %97, %98
  %conv110 = sitofp i32 %add109 to double
  %99 = load double, double* %edge_width, align 8
  %cmp111 = fcmp olt double %conv110, %99
  br i1 %cmp111, label %if.then.113, label %if.end

if.then.113:                                      ; preds = %if.else
  %100 = load i32, i32* %x.addr, align 4
  %101 = load i32, i32* %xi, align 4
  %add114 = add nsw i32 %100, %101
  %conv115 = sitofp i32 %add114 to double
  %102 = load double, double* %edge_width, align 8
  %div116 = fdiv double %conv115, %102
  store double %div116, double* %em, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.113, %if.else
  %103 = load i32, i32* %y.addr, align 4
  %104 = load i32, i32* %yi, align 4
  %add117 = add nsw i32 %103, %104
  %conv118 = sitofp i32 %add117 to double
  %105 = load double, double* %edge_width, align 8
  %cmp119 = fcmp olt double %conv118, %105
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %if.end
  %106 = load i32, i32* %y.addr, align 4
  %107 = load i32, i32* %yi, align 4
  %add122 = add nsw i32 %106, %107
  %conv123 = sitofp i32 %add122 to double
  %108 = load double, double* %edge_width, align 8
  %div124 = fdiv double %conv123, %108
  store double %div124, double* %emh, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %if.end
  %109 = load double, double* %emh, align 8
  %110 = load double, double* %em, align 8
  %cmp126 = fcmp olt double %109, %110
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  %111 = load double, double* %emh, align 8
  store double %111, double* %em, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.125
  %112 = load i32, i32* @preview_width, align 4
  %113 = load i32, i32* %x.addr, align 4
  %sub130 = sub nsw i32 %112, %113
  %114 = load i32, i32* %xi, align 4
  %sub131 = sub nsw i32 %sub130, %114
  %sub132 = sub nsw i32 %sub131, 1
  %conv133 = sitofp i32 %sub132 to double
  %115 = load double, double* %edge_width, align 8
  %cmp134 = fcmp olt double %conv133, %115
  br i1 %cmp134, label %if.then.136, label %if.end.142

if.then.136:                                      ; preds = %if.end.129
  %116 = load i32, i32* @preview_width, align 4
  %117 = load i32, i32* %x.addr, align 4
  %sub137 = sub nsw i32 %116, %117
  %118 = load i32, i32* %xi, align 4
  %sub138 = sub nsw i32 %sub137, %118
  %sub139 = sub nsw i32 %sub138, 1
  %conv140 = sitofp i32 %sub139 to double
  %119 = load double, double* %edge_width, align 8
  %div141 = fdiv double %conv140, %119
  store double %div141, double* %emh, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.136, %if.end.129
  %120 = load double, double* %emh, align 8
  %121 = load double, double* %em, align 8
  %cmp143 = fcmp olt double %120, %121
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.142
  %122 = load double, double* %emh, align 8
  store double %122, double* %em, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.end.142
  %123 = load i32, i32* @preview_height, align 4
  %124 = load i32, i32* %y.addr, align 4
  %sub147 = sub nsw i32 %123, %124
  %125 = load i32, i32* %yi, align 4
  %sub148 = sub nsw i32 %sub147, %125
  %sub149 = sub nsw i32 %sub148, 1
  %conv150 = sitofp i32 %sub149 to double
  %126 = load double, double* %edge_width, align 8
  %cmp151 = fcmp olt double %conv150, %126
  br i1 %cmp151, label %if.then.153, label %if.end.159

if.then.153:                                      ; preds = %if.end.146
  %127 = load i32, i32* @preview_height, align 4
  %128 = load i32, i32* %y.addr, align 4
  %sub154 = sub nsw i32 %127, %128
  %129 = load i32, i32* %yi, align 4
  %sub155 = sub nsw i32 %sub154, %129
  %sub156 = sub nsw i32 %sub155, 1
  %conv157 = sitofp i32 %sub156 to double
  %130 = load double, double* %edge_width, align 8
  %div158 = fdiv double %conv157, %130
  store double %div158, double* %emh, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.153, %if.end.146
  %131 = load double, double* %emh, align 8
  %132 = load double, double* %em, align 8
  %cmp160 = fcmp olt double %131, %132
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.159
  %133 = load double, double* %emh, align 8
  store double %133, double* %em, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %if.end.159
  %134 = load double, double* %nvx, align 8
  %135 = load double, double* %em, align 8
  %mul164 = fmul double %134, %135
  store double %mul164, double* %nvx, align 8
  %136 = load double, double* %nvy, align 8
  %137 = load double, double* %em, align 8
  %mul165 = fmul double %136, %137
  store double %mul165, double* %nvy, align 8
  %138 = load double, double* %nvx, align 8
  %139 = load i32, i32* %x.addr, align 4
  %conv166 = sitofp i32 %139 to double
  %add167 = fadd double %138, %conv166
  %140 = load i32, i32* %xi, align 4
  %conv168 = sitofp i32 %140 to double
  %add169 = fadd double %add167, %conv168
  %141 = load double, double* %nvy, align 8
  %142 = load i32, i32* %y.addr, align 4
  %conv170 = sitofp i32 %142 to double
  %add171 = fadd double %141, %conv170
  %143 = load i32, i32* %yi, align 4
  %conv172 = sitofp i32 %143 to double
  %add173 = fadd double %add171, %conv172
  call void @iwarp_get_deform_vector(double %add169, double %add173, double* %xv, double* %yv)
  %144 = load double, double* %nvx, align 8
  %145 = load double, double* %xv, align 8
  %add174 = fadd double %145, %144
  store double %add174, double* %xv, align 8
  %146 = load double, double* %xv, align 8
  %147 = load i32, i32* %x.addr, align 4
  %conv175 = sitofp i32 %147 to double
  %add176 = fadd double %146, %conv175
  %148 = load i32, i32* %xi, align 4
  %conv177 = sitofp i32 %148 to double
  %add178 = fadd double %add176, %conv177
  %cmp179 = fcmp olt double %add178, 0.000000e+00
  br i1 %cmp179, label %if.then.181, label %if.else.185

if.then.181:                                      ; preds = %if.end.163
  %149 = load i32, i32* %x.addr, align 4
  %sub182 = sub nsw i32 0, %149
  %150 = load i32, i32* %xi, align 4
  %sub183 = sub nsw i32 %sub182, %150
  %conv184 = sitofp i32 %sub183 to double
  store double %conv184, double* %xv, align 8
  br label %if.end.200

if.else.185:                                      ; preds = %if.end.163
  %151 = load double, double* %xv, align 8
  %152 = load i32, i32* %x.addr, align 4
  %conv186 = sitofp i32 %152 to double
  %add187 = fadd double %151, %conv186
  %153 = load i32, i32* %xi, align 4
  %conv188 = sitofp i32 %153 to double
  %add189 = fadd double %add187, %conv188
  %154 = load i32, i32* @preview_width, align 4
  %sub190 = sub nsw i32 %154, 1
  %conv191 = sitofp i32 %sub190 to double
  %cmp192 = fcmp ogt double %add189, %conv191
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %if.else.185
  %155 = load i32, i32* @preview_width, align 4
  %156 = load i32, i32* %x.addr, align 4
  %sub195 = sub nsw i32 %155, %156
  %157 = load i32, i32* %xi, align 4
  %sub196 = sub nsw i32 %sub195, %157
  %sub197 = sub nsw i32 %sub196, 1
  %conv198 = sitofp i32 %sub197 to double
  store double %conv198, double* %xv, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %if.else.185
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.181
  %158 = load double, double* %nvy, align 8
  %159 = load double, double* %yv, align 8
  %add201 = fadd double %159, %158
  store double %add201, double* %yv, align 8
  %160 = load double, double* %yv, align 8
  %161 = load i32, i32* %y.addr, align 4
  %conv202 = sitofp i32 %161 to double
  %add203 = fadd double %160, %conv202
  %162 = load i32, i32* %yi, align 4
  %conv204 = sitofp i32 %162 to double
  %add205 = fadd double %add203, %conv204
  %cmp206 = fcmp olt double %add205, 0.000000e+00
  br i1 %cmp206, label %if.then.208, label %if.else.212

if.then.208:                                      ; preds = %if.end.200
  %163 = load i32, i32* %y.addr, align 4
  %sub209 = sub nsw i32 0, %163
  %164 = load i32, i32* %yi, align 4
  %sub210 = sub nsw i32 %sub209, %164
  %conv211 = sitofp i32 %sub210 to double
  store double %conv211, double* %yv, align 8
  br label %if.end.227

if.else.212:                                      ; preds = %if.end.200
  %165 = load double, double* %yv, align 8
  %166 = load i32, i32* %y.addr, align 4
  %conv213 = sitofp i32 %166 to double
  %add214 = fadd double %165, %conv213
  %167 = load i32, i32* %yi, align 4
  %conv215 = sitofp i32 %167 to double
  %add216 = fadd double %add214, %conv215
  %168 = load i32, i32* @preview_height, align 4
  %sub217 = sub nsw i32 %168, 1
  %conv218 = sitofp i32 %sub217 to double
  %cmp219 = fcmp ogt double %add216, %conv218
  br i1 %cmp219, label %if.then.221, label %if.end.226

if.then.221:                                      ; preds = %if.else.212
  %169 = load i32, i32* @preview_height, align 4
  %170 = load i32, i32* %y.addr, align 4
  %sub222 = sub nsw i32 %169, %170
  %171 = load i32, i32* %yi, align 4
  %sub223 = sub nsw i32 %sub222, %171
  %sub224 = sub nsw i32 %sub223, 1
  %conv225 = sitofp i32 %sub224 to double
  store double %conv225, double* %yv, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.221, %if.else.212
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.208
  %172 = load double, double* %xv, align 8
  %173 = load i32, i32* %fptr, align 4
  %idxprom228 = sext i32 %173 to i64
  %174 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx229 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %174, i64 %idxprom228
  %x230 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx229, i32 0, i32 0
  store double %172, double* %x230, align 8
  %175 = load double, double* %yv, align 8
  %176 = load i32, i32* %fptr, align 4
  %idxprom231 = sext i32 %176 to i64
  %177 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx232 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %177, i64 %idxprom231
  %y233 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx232, i32 0, i32 1
  store double %175, double* %y233, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.227, %if.then.87
  %178 = load i32, i32* %fptr, align 4
  %idxprom235 = sext i32 %178 to i64
  %179 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx236 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %179, i64 %idxprom235
  %x237 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx236, i32 0, i32 0
  %180 = load double, double* %x237, align 8
  %181 = load i32, i32* %x.addr, align 4
  %conv238 = sitofp i32 %181 to double
  %add239 = fadd double %180, %conv238
  %182 = load i32, i32* %xi, align 4
  %conv240 = sitofp i32 %182 to double
  %add241 = fadd double %add239, %conv240
  store double %add241, double* %xn, align 8
  %183 = load i32, i32* %fptr, align 4
  %idxprom242 = sext i32 %183 to i64
  %184 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx243 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %184, i64 %idxprom242
  %y244 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx243, i32 0, i32 1
  %185 = load double, double* %y244, align 8
  %186 = load i32, i32* %y.addr, align 4
  %conv245 = sitofp i32 %186 to double
  %add246 = fadd double %185, %conv245
  %187 = load i32, i32* %yi, align 4
  %conv247 = sitofp i32 %187 to double
  %add248 = fadd double %add246, %conv247
  store double %add248, double* %yn, align 8
  %188 = load i32, i32* @lock_alpha, align 4
  %tobool = icmp ne i32 %188, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.261

land.lhs.true:                                    ; preds = %if.end.234
  %189 = load i32, i32* @image_bpp, align 4
  %cmp249 = icmp eq i32 %189, 4
  br i1 %cmp249, label %if.then.253, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %190 = load i32, i32* @image_bpp, align 4
  %cmp251 = icmp eq i32 %190, 2
  br i1 %cmp251, label %if.then.253, label %if.end.261

if.then.253:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %191 = load i32, i32* %x.addr, align 4
  %192 = load i32, i32* %xi, align 4
  %add254 = add nsw i32 %191, %192
  %conv255 = sitofp i32 %add254 to double
  %193 = load i32, i32* %y.addr, align 4
  %194 = load i32, i32* %yi, align 4
  %add256 = add nsw i32 %193, %194
  %conv257 = sitofp i32 %add256 to double
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @iwarp_preview_get_point(double %conv255, double %conv257, i8* %arraydecay)
  %195 = load i32, i32* @image_bpp, align 4
  %sub258 = sub nsw i32 %195, 1
  %idxprom259 = sext i32 %sub258 to i64
  %arrayidx260 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom259
  %196 = load i8, i8* %arrayidx260, align 1
  store i8 %196, i8* %alpha, align 1
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.253, %lor.lhs.false, %if.end.234
  %197 = load double, double* %xn, align 8
  %198 = load double, double* %yn, align 8
  %arraydecay262 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @iwarp_preview_get_point(double %197, double %198, i8* %arraydecay262)
  %199 = load i32, i32* @lock_alpha, align 4
  %tobool263 = icmp ne i32 %199, 0
  br i1 %tobool263, label %if.end.274, label %land.lhs.true.264

land.lhs.true.264:                                ; preds = %if.end.261
  %200 = load i32, i32* @image_bpp, align 4
  %cmp265 = icmp eq i32 %200, 4
  br i1 %cmp265, label %if.then.270, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.264
  %201 = load i32, i32* @image_bpp, align 4
  %cmp268 = icmp eq i32 %201, 2
  br i1 %cmp268, label %if.then.270, label %if.end.274

if.then.270:                                      ; preds = %lor.lhs.false.267, %land.lhs.true.264
  %202 = load i32, i32* @image_bpp, align 4
  %sub271 = sub nsw i32 %202, 1
  %idxprom272 = sext i32 %sub271 to i64
  %arrayidx273 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom272
  %203 = load i8, i8* %arrayidx273, align 1
  store i8 %203, i8* %alpha, align 1
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.270, %lor.lhs.false.267, %if.end.261
  %204 = load i32, i32* @preview_bpp, align 4
  switch i32 %204, label %sw.epilog.325 [
    i32 4, label %sw.bb.275
    i32 3, label %sw.bb.295
    i32 2, label %sw.bb.311
    i32 1, label %sw.bb.321
  ]

sw.bb.275:                                        ; preds = %if.end.274
  %arrayidx276 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %205 = load i8, i8* %arrayidx276, align 1
  %206 = load i32, i32* %ptr, align 4
  %mul277 = mul nsw i32 %206, 4
  %add278 = add nsw i32 %mul277, 0
  %idxprom279 = sext i32 %add278 to i64
  %207 = load i8*, i8** @dstimage, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %207, i64 %idxprom279
  store i8 %205, i8* %arrayidx280, align 1
  %arrayidx281 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  %208 = load i8, i8* %arrayidx281, align 1
  %209 = load i32, i32* %ptr, align 4
  %mul282 = mul nsw i32 %209, 4
  %add283 = add nsw i32 %mul282, 1
  %idxprom284 = sext i32 %add283 to i64
  %210 = load i8*, i8** @dstimage, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %210, i64 %idxprom284
  store i8 %208, i8* %arrayidx285, align 1
  %arrayidx286 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  %211 = load i8, i8* %arrayidx286, align 1
  %212 = load i32, i32* %ptr, align 4
  %mul287 = mul nsw i32 %212, 4
  %add288 = add nsw i32 %mul287, 2
  %idxprom289 = sext i32 %add288 to i64
  %213 = load i8*, i8** @dstimage, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %213, i64 %idxprom289
  store i8 %211, i8* %arrayidx290, align 1
  %214 = load i8, i8* %alpha, align 1
  %215 = load i32, i32* %ptr, align 4
  %mul291 = mul nsw i32 %215, 4
  %add292 = add nsw i32 %mul291, 3
  %idxprom293 = sext i32 %add292 to i64
  %216 = load i8*, i8** @dstimage, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %216, i64 %idxprom293
  store i8 %214, i8* %arrayidx294, align 1
  br label %sw.epilog.325

sw.bb.295:                                        ; preds = %if.end.274
  %arrayidx296 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %217 = load i8, i8* %arrayidx296, align 1
  %218 = load i32, i32* %ptr, align 4
  %mul297 = mul nsw i32 %218, 3
  %add298 = add nsw i32 %mul297, 0
  %idxprom299 = sext i32 %add298 to i64
  %219 = load i8*, i8** @dstimage, align 8
  %arrayidx300 = getelementptr inbounds i8, i8* %219, i64 %idxprom299
  store i8 %217, i8* %arrayidx300, align 1
  %arrayidx301 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 1
  %220 = load i8, i8* %arrayidx301, align 1
  %221 = load i32, i32* %ptr, align 4
  %mul302 = mul nsw i32 %221, 3
  %add303 = add nsw i32 %mul302, 1
  %idxprom304 = sext i32 %add303 to i64
  %222 = load i8*, i8** @dstimage, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %222, i64 %idxprom304
  store i8 %220, i8* %arrayidx305, align 1
  %arrayidx306 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 2
  %223 = load i8, i8* %arrayidx306, align 1
  %224 = load i32, i32* %ptr, align 4
  %mul307 = mul nsw i32 %224, 3
  %add308 = add nsw i32 %mul307, 2
  %idxprom309 = sext i32 %add308 to i64
  %225 = load i8*, i8** @dstimage, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %225, i64 %idxprom309
  store i8 %223, i8* %arrayidx310, align 1
  br label %sw.epilog.325

sw.bb.311:                                        ; preds = %if.end.274
  %arrayidx312 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %226 = load i8, i8* %arrayidx312, align 1
  %227 = load i32, i32* %ptr, align 4
  %mul313 = mul nsw i32 %227, 2
  %add314 = add nsw i32 %mul313, 0
  %idxprom315 = sext i32 %add314 to i64
  %228 = load i8*, i8** @dstimage, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %228, i64 %idxprom315
  store i8 %226, i8* %arrayidx316, align 1
  %229 = load i8, i8* %alpha, align 1
  %230 = load i32, i32* %ptr, align 4
  %mul317 = mul nsw i32 %230, 2
  %add318 = add nsw i32 %mul317, 1
  %idxprom319 = sext i32 %add318 to i64
  %231 = load i8*, i8** @dstimage, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %231, i64 %idxprom319
  store i8 %229, i8* %arrayidx320, align 1
  br label %sw.epilog.325

sw.bb.321:                                        ; preds = %if.end.274
  %arrayidx322 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 0
  %232 = load i8, i8* %arrayidx322, align 1
  %233 = load i32, i32* %ptr, align 4
  %idxprom323 = sext i32 %233 to i64
  %234 = load i8*, i8** @dstimage, align 8
  %arrayidx324 = getelementptr inbounds i8, i8* %234, i64 %idxprom323
  store i8 %232, i8* %arrayidx324, align 1
  br label %sw.epilog.325

sw.epilog.325:                                    ; preds = %sw.bb.321, %if.end.274, %sw.bb.311, %sw.bb.295, %sw.bb.275
  br label %if.end.326

if.end.326:                                       ; preds = %sw.epilog.325, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.326
  %235 = load i32, i32* %xi, align 4
  %inc = add nsw i32 %235, 1
  store i32 %inc, i32* %xi, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.327

for.inc.327:                                      ; preds = %for.end
  %236 = load i32, i32* %yi, align 4
  %inc328 = add nsw i32 %236, 1
  store i32 %inc328, i32* %yi, align 4
  br label %for.cond

for.end.329:                                      ; preds = %for.cond
  %237 = load i32, i32* %y0, align 4
  store i32 %237, i32* %yi, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.364, %for.end.329
  %238 = load i32, i32* %yi, align 4
  %239 = load i32, i32* %y1, align 4
  %cmp331 = icmp sle i32 %238, %239
  br i1 %cmp331, label %for.body.333, label %for.end.366

for.body.333:                                     ; preds = %for.cond.330
  %240 = load i32, i32* %x0, align 4
  store i32 %240, i32* %xi, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.361, %for.body.333
  %241 = load i32, i32* %xi, align 4
  %242 = load i32, i32* %x1, align 4
  %cmp335 = icmp sle i32 %241, %242
  br i1 %cmp335, label %for.body.337, label %for.end.363

for.body.337:                                     ; preds = %for.cond.334
  %243 = load i32, i32* %xi, align 4
  %244 = load i32, i32* %xi, align 4
  %mul338 = mul nsw i32 %243, %244
  %245 = load i32, i32* %yi, align 4
  %246 = load i32, i32* %yi, align 4
  %mul339 = mul nsw i32 %245, %246
  %add340 = add nsw i32 %mul338, %mul339
  %mul341 = mul nsw i32 %add340, 250
  %247 = load i32, i32* %radius2, align 4
  %div342 = sdiv i32 %mul341, %247
  store i32 %div342, i32* %length2, align 4
  %248 = load i32, i32* %length2, align 4
  %cmp343 = icmp slt i32 %248, 250
  br i1 %cmp343, label %if.then.345, label %if.end.360

if.then.345:                                      ; preds = %for.body.337
  %249 = load i32, i32* %yi, align 4
  %250 = load i32, i32* %y.addr, align 4
  %add346 = add nsw i32 %249, %250
  %251 = load i32, i32* @preview_width, align 4
  %mul347 = mul nsw i32 %add346, %251
  %252 = load i32, i32* %xi, align 4
  %add348 = add nsw i32 %mul347, %252
  %253 = load i32, i32* %x.addr, align 4
  %add349 = add nsw i32 %add348, %253
  store i32 %add349, i32* %ptr, align 4
  %254 = load i32, i32* %yi, align 4
  %255 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add350 = add nsw i32 %254, %255
  %256 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %mul351 = mul nsw i32 %256, 2
  %add352 = add nsw i32 %mul351, 1
  %mul353 = mul nsw i32 %add350, %add352
  %257 = load i32, i32* %xi, align 4
  %add354 = add nsw i32 %mul353, %257
  %258 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 0), align 4
  %add355 = add nsw i32 %add354, %258
  store i32 %add355, i32* %fptr, align 4
  %259 = load i32, i32* %ptr, align 4
  %idxprom356 = sext i32 %259 to i64
  %260 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx357 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %260, i64 %idxprom356
  %261 = load i32, i32* %fptr, align 4
  %idxprom358 = sext i32 %261 to i64
  %262 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_area_vectors, align 8
  %arrayidx359 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %262, i64 %idxprom358
  %263 = bitcast %struct._GimpVector2* %arrayidx357 to i8*
  %264 = bitcast %struct._GimpVector2* %arrayidx359 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %263, i8* %264, i64 16, i32 8, i1 false)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.345, %for.body.337
  br label %for.inc.361

for.inc.361:                                      ; preds = %if.end.360
  %265 = load i32, i32* %xi, align 4
  %inc362 = add nsw i32 %265, 1
  store i32 %inc362, i32* %xi, align 4
  br label %for.cond.334

for.end.363:                                      ; preds = %for.cond.334
  br label %for.inc.364

for.inc.364:                                      ; preds = %for.end.363
  %266 = load i32, i32* %yi, align 4
  %inc365 = add nsw i32 %266, 1
  store i32 %inc365, i32* %yi, align 4
  br label %for.cond.330

for.end.366:                                      ; preds = %for.cond.330
  store i32 1, i32* @iwarp_changed, align 4
  %267 = load i32, i32* %x.addr, align 4
  %268 = load i32, i32* %x0, align 4
  %add367 = add nsw i32 %267, %268
  %269 = load i32, i32* %y.addr, align 4
  %270 = load i32, i32* %y0, align 4
  %add368 = add nsw i32 %269, %270
  %271 = load i32, i32* %x.addr, align 4
  %272 = load i32, i32* %x1, align 4
  %add369 = add nsw i32 %271, %272
  %add370 = add nsw i32 %add369, 1
  %273 = load i32, i32* %y.addr, align 4
  %274 = load i32, i32* %y1, align 4
  %add371 = add nsw i32 %273, %274
  %add372 = add nsw i32 %add371, 1
  call void @iwarp_update_preview(i32 %add367, i32 %add368, i32 %add370, i32 %add372)
  ret void
}

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_get_deform_vector(double %x, double %y, double* %xv, double* %yv) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %xv.addr = alloca double*, align 8
  %yv.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %my0 = alloca double, align 8
  %my1 = alloca double, align 8
  %mx0 = alloca double, align 8
  %mx1 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %xv, double** %xv.addr, align 8
  store double* %yv, double** %yv.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp oge double %0, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %2 = load i32, i32* @preview_width, align 4
  %sub = sub nsw i32 %2, 1
  %conv = sitofp i32 %sub to double
  %cmp1 = fcmp olt double %1, %conv
  br i1 %cmp1, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load double, double* %y.addr, align 8
  %cmp4 = fcmp oge double %3, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %4 = load double, double* %y.addr, align 8
  %5 = load i32, i32* @preview_height, align 4
  %sub7 = sub nsw i32 %5, 1
  %conv8 = sitofp i32 %sub7 to double
  %cmp9 = fcmp olt double %4, %conv8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %6 = load double, double* %x.addr, align 8
  %conv11 = fptosi double %6 to i32
  store i32 %conv11, i32* %xi, align 4
  %7 = load double, double* %y.addr, align 8
  %conv12 = fptosi double %7 to i32
  store i32 %conv12, i32* %yi, align 4
  %8 = load double, double* %x.addr, align 8
  %9 = load i32, i32* %xi, align 4
  %conv13 = sitofp i32 %9 to double
  %sub14 = fsub double %8, %conv13
  store double %sub14, double* %dx, align 8
  %10 = load double, double* %y.addr, align 8
  %11 = load i32, i32* %yi, align 4
  %conv15 = sitofp i32 %11 to double
  %sub16 = fsub double %10, %conv15
  store double %sub16, double* %dy, align 8
  %12 = load i32, i32* %yi, align 4
  %13 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %xi, align 4
  %add = add nsw i32 %mul, %14
  store i32 %add, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %16, i64 %idxprom
  %x17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %17 = load double, double* %x17, align 8
  %18 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i64 %idxprom19
  %x21 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx20, i32 0, i32 0
  %20 = load double, double* %x21, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %22, i64 %idxprom22
  %x24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx23, i32 0, i32 0
  %23 = load double, double* %x24, align 8
  %sub25 = fsub double %20, %23
  %24 = load double, double* %dx, align 8
  %mul26 = fmul double %sub25, %24
  %add27 = fadd double %17, %mul26
  store double %add27, double* %mx0, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @preview_width, align 4
  %add28 = add nsw i32 %25, %26
  %idxprom29 = sext i32 %add28 to i64
  %27 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %27, i64 %idxprom29
  %x31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx30, i32 0, i32 0
  %28 = load double, double* %x31, align 8
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @preview_width, align 4
  %add32 = add nsw i32 %29, %30
  %add33 = add nsw i32 %add32, 1
  %idxprom34 = sext i32 %add33 to i64
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %31, i64 %idxprom34
  %x36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx35, i32 0, i32 0
  %32 = load double, double* %x36, align 8
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* @preview_width, align 4
  %add37 = add nsw i32 %33, %34
  %idxprom38 = sext i32 %add37 to i64
  %35 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %35, i64 %idxprom38
  %x40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx39, i32 0, i32 0
  %36 = load double, double* %x40, align 8
  %sub41 = fsub double %32, %36
  %37 = load double, double* %dx, align 8
  %mul42 = fmul double %sub41, %37
  %add43 = fadd double %28, %mul42
  store double %add43, double* %mx1, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %39, i64 %idxprom44
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx45, i32 0, i32 1
  %40 = load double, double* %y46, align 8
  %41 = load double, double* %dx, align 8
  %42 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %42, 1
  %idxprom48 = sext i32 %add47 to i64
  %43 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %43, i64 %idxprom48
  %y50 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx49, i32 0, i32 1
  %44 = load double, double* %y50, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %46, i64 %idxprom51
  %y53 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx52, i32 0, i32 1
  %47 = load double, double* %y53, align 8
  %sub54 = fsub double %44, %47
  %mul55 = fmul double %41, %sub54
  %add56 = fadd double %40, %mul55
  store double %add56, double* %my0, align 8
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* @preview_width, align 4
  %add57 = add nsw i32 %48, %49
  %idxprom58 = sext i32 %add57 to i64
  %50 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %50, i64 %idxprom58
  %y60 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx59, i32 0, i32 1
  %51 = load double, double* %y60, align 8
  %52 = load double, double* %dx, align 8
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* @preview_width, align 4
  %add61 = add nsw i32 %53, %54
  %add62 = add nsw i32 %add61, 1
  %idxprom63 = sext i32 %add62 to i64
  %55 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %55, i64 %idxprom63
  %y65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx64, i32 0, i32 1
  %56 = load double, double* %y65, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* @preview_width, align 4
  %add66 = add nsw i32 %57, %58
  %idxprom67 = sext i32 %add66 to i64
  %59 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %59, i64 %idxprom67
  %y69 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx68, i32 0, i32 1
  %60 = load double, double* %y69, align 8
  %sub70 = fsub double %56, %60
  %mul71 = fmul double %52, %sub70
  %add72 = fadd double %51, %mul71
  store double %add72, double* %my1, align 8
  %61 = load double, double* %mx0, align 8
  %62 = load double, double* %dy, align 8
  %63 = load double, double* %mx1, align 8
  %64 = load double, double* %mx0, align 8
  %sub73 = fsub double %63, %64
  %mul74 = fmul double %62, %sub73
  %add75 = fadd double %61, %mul74
  %65 = load double*, double** %xv.addr, align 8
  store double %add75, double* %65, align 8
  %66 = load double, double* %my0, align 8
  %67 = load double, double* %dy, align 8
  %68 = load double, double* %my1, align 8
  %69 = load double, double* %my0, align 8
  %sub76 = fsub double %68, %69
  %mul77 = fmul double %67, %sub76
  %add78 = fadd double %66, %mul77
  %70 = load double*, double** %yv.addr, align 8
  store double %add78, double* %70, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %71 = load double*, double** %yv.addr, align 8
  store double 0.000000e+00, double* %71, align 8
  %72 = load double*, double** %xv.addr, align 8
  store double 0.000000e+00, double* %72, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_preview_get_point(double %x, double %y, i8* %color) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %j = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p3 = alloca i8*, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %xi, align 4
  %1 = load double, double* %y.addr, align 8
  %conv1 = fptosi double %1 to i32
  store i32 %conv1, i32* %yi, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  %4 = load i32, i32* %xi, align 4
  %conv2 = sitofp i32 %4 to double
  %sub = fsub double %3, %conv2
  store double %sub, double* %dx, align 8
  %5 = load double, double* %y.addr, align 8
  %6 = load i32, i32* %yi, align 4
  %conv3 = sitofp i32 %6 to double
  %sub4 = fsub double %5, %conv3
  store double %sub4, double* %dy, align 8
  %7 = load i32, i32* %xi, align 4
  %8 = load i32, i32* %yi, align 4
  call void @iwarp_preview_get_pixel(i32 %7, i32 %8, i8** %p0)
  %9 = load i32, i32* %xi, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %yi, align 4
  call void @iwarp_preview_get_pixel(i32 %add, i32 %10, i8** %p1)
  %11 = load i32, i32* %xi, align 4
  %12 = load i32, i32* %yi, align 4
  %add5 = add nsw i32 %12, 1
  call void @iwarp_preview_get_pixel(i32 %11, i32 %add5, i8** %p2)
  %13 = load i32, i32* %xi, align 4
  %add6 = add nsw i32 %13, 1
  %14 = load i32, i32* %yi, align 4
  %add7 = add nsw i32 %14, 1
  call void @iwarp_preview_get_pixel(i32 %add6, i32 %add7, i8** %p3)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* @image_bpp, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %p0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %19 to i32
  %conv10 = sitofp i32 %conv9 to double
  %20 = load double, double* %dx, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i8*, i8** %p1, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 %idxprom11
  %23 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %23 to i32
  %24 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load i8*, i8** %p0, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 %idxprom14
  %26 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %26 to i32
  %sub17 = sub nsw i32 %conv13, %conv16
  %conv18 = sitofp i32 %sub17 to double
  %mul = fmul double %20, %conv18
  %add19 = fadd double %conv10, %mul
  store double %add19, double* %m0, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load i8*, i8** %p2, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 %idxprom20
  %29 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %29 to i32
  %conv23 = sitofp i32 %conv22 to double
  %30 = load double, double* %dx, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load i8*, i8** %p3, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %32, i64 %idxprom24
  %33 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %33 to i32
  %34 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %34 to i64
  %35 = load i8*, i8** %p2, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %35, i64 %idxprom27
  %36 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %36 to i32
  %sub30 = sub nsw i32 %conv26, %conv29
  %conv31 = sitofp i32 %sub30 to double
  %mul32 = fmul double %30, %conv31
  %add33 = fadd double %conv23, %mul32
  store double %add33, double* %m1, align 8
  %37 = load double, double* %m0, align 8
  %38 = load double, double* %dy, align 8
  %39 = load double, double* %m1, align 8
  %40 = load double, double* %m0, align 8
  %sub34 = fsub double %39, %40
  %mul35 = fmul double %38, %sub34
  %add36 = fadd double %37, %mul35
  %conv37 = fptoui double %add36 to i8
  %41 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load i8*, i8** %color.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %42, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %j, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %44 = load i32, i32* %xi, align 4
  %45 = load i32, i32* %yi, align 4
  call void @iwarp_preview_get_pixel(i32 %44, i32 %45, i8** %p0)
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %if.else
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* @image_bpp, align 4
  %cmp41 = icmp slt i32 %46, %47
  br i1 %cmp41, label %for.body.43, label %for.end.50

for.body.43:                                      ; preds = %for.cond.40
  %48 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load i8*, i8** %p0, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %49, i64 %idxprom44
  %50 = load i8, i8* %arrayidx45, align 1
  %51 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %51 to i64
  %52 = load i8*, i8** %color.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %52, i64 %idxprom46
  store i8 %50, i8* %arrayidx47, align 1
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.43
  %53 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %53, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.40

for.end.50:                                       ; preds = %for.cond.40
  br label %if.end

if.end:                                           ; preds = %for.end.50, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_preview_get_pixel(i32 %x, i32 %y, i8** %color) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca i8**, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8** %color, i8*** %color.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* @preview_width, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* @preview_height, align 4
  %cmp5 = icmp sge i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = load i8**, i8*** %color.addr, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @iwarp_preview_get_pixel.black, i32 0, i32 0), i8** %6, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %7 = load i8*, i8** @srcimage, align 8
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %10
  %11 = load i32, i32* @image_bpp, align 4
  %mul6 = mul nsw i32 %add, %11
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %12 = load i8**, i8*** %color.addr, align 8
  store i8* %add.ptr, i8** %12, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iwarp_resize_idle(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %new_deform_vectors = alloca %struct._GimpVector2*, align 8
  %old_preview_width = alloca i32, align 4
  %old_preview_height = alloca i32, align 4
  %new_preview_width = alloca i32, align 4
  %new_preview_height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %new2old = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 0, i32* @resize_idle, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %1 = load i32, i32* @preview_width, align 4
  store i32 %1, i32* %old_preview_width, align 4
  %2 = load i32, i32* @preview_height, align 4
  store i32 %2, i32* %old_preview_height, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  store i32 %3, i32* @max_current_preview_width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %4 = load i32, i32* %height, align 4
  store i32 %4, i32* @max_current_preview_height, align 4
  call void @iwarp_preview_init()
  %5 = load i32, i32* @preview_width, align 4
  store i32 %5, i32* %new_preview_width, align 4
  %6 = load i32, i32* @preview_height, align 4
  store i32 %6, i32* %new_preview_height, align 4
  %7 = load i32, i32* @preview_width, align 4
  %8 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %7, %8
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc0_n(i64 %conv, i64 16)
  %9 = bitcast i8* %call to %struct._GimpVector2*
  store %struct._GimpVector2* %9, %struct._GimpVector2** %new_deform_vectors, align 8
  %10 = load i32, i32* %old_preview_width, align 4
  %conv1 = sitofp i32 %10 to double
  %11 = load i32, i32* @preview_width, align 4
  %conv2 = sitofp i32 %11 to double
  %div = fdiv double %conv1, %conv2
  store double %div, double* %new2old, align 8
  %12 = load i32, i32* %old_preview_width, align 4
  store i32 %12, i32* @preview_width, align 4
  %13 = load i32, i32* %old_preview_height, align 4
  store i32 %13, i32* @preview_height, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %new_preview_height, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %new_preview_width, align 4
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %18 = load double, double* %new2old, align 8
  %19 = load i32, i32* %x, align 4
  %conv8 = sitofp i32 %19 to double
  %mul9 = fmul double %18, %conv8
  %20 = load double, double* %new2old, align 8
  %21 = load i32, i32* %y, align 4
  %conv10 = sitofp i32 %21 to double
  %mul11 = fmul double %20, %conv10
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %new_preview_width, align 4
  %24 = load i32, i32* %y, align 4
  %mul12 = mul nsw i32 %23, %24
  %add = add nsw i32 %22, %mul12
  %idxprom = sext i32 %add to i64
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %new_deform_vectors, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %25, i64 %idxprom
  %x13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %new_preview_width, align 4
  %28 = load i32, i32* %y, align 4
  %mul14 = mul nsw i32 %27, %28
  %add15 = add nsw i32 %26, %mul14
  %idxprom16 = sext i32 %add15 to i64
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %new_deform_vectors, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %29, i64 %idxprom16
  %y18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx17, i32 0, i32 1
  call void @iwarp_get_deform_vector(double %mul9, double %mul11, double* %x13, double* %y18)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %30 = load i32, i32* %x, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, i32* %y, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %32 = load i32, i32* %new_preview_width, align 4
  store i32 %32, i32* @preview_width, align 4
  %33 = load i32, i32* %new_preview_height, align 4
  store i32 %33, i32* @preview_height, align 4
  %34 = load %struct._GimpVector2*, %struct._GimpVector2** @deform_vectors, align 8
  %35 = bitcast %struct._GimpVector2* %34 to i8*
  call void @g_free(i8* %35)
  %36 = load %struct._GimpVector2*, %struct._GimpVector2** %new_deform_vectors, align 8
  store %struct._GimpVector2* %36, %struct._GimpVector2** @deform_vectors, align 8
  %37 = load i32, i32* %new_preview_width, align 4
  %38 = load i32, i32* %new_preview_height, align 4
  %39 = load i32, i32* %old_preview_width, align 4
  %40 = load i32, i32* %old_preview_height, align 4
  call void @iwarp_scale_preview(i32 %37, i32 %38, i32 %39, i32 %40)
  %41 = load i32, i32* @preview_width, align 4
  %42 = load i32, i32* @preview_height, align 4
  call void @iwarp_update_preview(i32 0, i32 0, i32 %41, i32 %42)
  ret i32 0
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_scale_preview(i32 %new_width, i32 %new_height, i32 %old_width, i32 %old_height) #0 {
entry:
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %old_width.addr = alloca i32, align 4
  %old_height.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %ox = alloca double, align 8
  %oy = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %src1 = alloca i32, align 4
  %src2 = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %in0 = alloca double, align 8
  %in1 = alloca double, align 8
  %in2 = alloca double, align 8
  %new_data = alloca i8*, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %old_width, i32* %old_width.addr, align 4
  store i32 %old_height, i32* %old_height.addr, align 4
  %0 = load i32, i32* %new_width.addr, align 4
  %1 = load i32, i32* %new_height.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* @preview_bpp, align 4
  %mul1 = mul nsw i32 %mul, %2
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %new_data, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %entry
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %new_height.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.76, %for.body
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %new_width.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body.6, label %for.end.78

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %x, align 4
  %conv7 = sitofp i32 %7 to double
  %8 = load i32, i32* %new_width.addr, align 4
  %conv8 = sitofp i32 %8 to double
  %div = fdiv double %conv7, %conv8
  %9 = load i32, i32* %old_width.addr, align 4
  %conv9 = sitofp i32 %9 to double
  %mul10 = fmul double %div, %conv9
  store double %mul10, double* %ox, align 8
  %10 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %10 to double
  %11 = load i32, i32* %new_height.addr, align 4
  %conv12 = sitofp i32 %11 to double
  %div13 = fdiv double %conv11, %conv12
  %12 = load i32, i32* %old_height.addr, align 4
  %conv14 = sitofp i32 %12 to double
  %mul15 = fmul double %div13, %conv14
  store double %mul15, double* %oy, align 8
  %13 = load double, double* %ox, align 8
  %conv16 = fptosi double %13 to i32
  store i32 %conv16, i32* %ix, align 4
  %14 = load double, double* %oy, align 8
  %conv17 = fptosi double %14 to i32
  store i32 %conv17, i32* %iy, align 4
  %15 = load double, double* %ox, align 8
  %16 = load i32, i32* %ix, align 4
  %conv18 = sitofp i32 %16 to double
  %sub = fsub double %15, %conv18
  store double %sub, double* %dx, align 8
  %17 = load double, double* %oy, align 8
  %18 = load i32, i32* %iy, align 4
  %conv19 = sitofp i32 %18 to double
  %sub20 = fsub double %17, %conv19
  store double %sub20, double* %dy, align 8
  %19 = load i32, i32* %ix, align 4
  %20 = load i32, i32* %old_width.addr, align 4
  %sub21 = sub nsw i32 %20, 1
  %cmp22 = icmp eq i32 %19, %sub21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store double 0.000000e+00, double* %dx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  store i32 0, i32* %z, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end
  %21 = load i32, i32* %z, align 4
  %22 = load i32, i32* @preview_bpp, align 4
  %cmp25 = icmp slt i32 %21, %22
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %23 = load i32, i32* %iy, align 4
  %24 = load i32, i32* %old_width.addr, align 4
  %mul28 = mul nsw i32 %23, %24
  %25 = load i32, i32* %ix, align 4
  %add = add nsw i32 %mul28, %25
  %26 = load i32, i32* @preview_bpp, align 4
  %mul29 = mul nsw i32 %add, %26
  %27 = load i32, i32* %z, align 4
  %add30 = add nsw i32 %mul29, %27
  store i32 %add30, i32* %src1, align 4
  %28 = load i32, i32* %iy, align 4
  %29 = load i32, i32* %old_height.addr, align 4
  %sub31 = sub nsw i32 %29, 1
  %cmp32 = icmp ne i32 %28, %sub31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body.27
  %30 = load i32, i32* %src1, align 4
  %31 = load i32, i32* %old_width.addr, align 4
  %32 = load i32, i32* @preview_bpp, align 4
  %mul35 = mul nsw i32 %31, %32
  %add36 = add nsw i32 %30, %mul35
  store i32 %add36, i32* %src2, align 4
  br label %if.end.37

if.else:                                          ; preds = %for.body.27
  %33 = load i32, i32* %src1, align 4
  store i32 %33, i32* %src2, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.34
  %34 = load i32, i32* %src1, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i8*, i8** @dstimage, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %conv38 = zext i8 %36 to i32
  %conv39 = sitofp i32 %conv38 to double
  %37 = load i32, i32* %src1, align 4
  %38 = load i32, i32* @preview_bpp, align 4
  %add40 = add nsw i32 %37, %38
  %idxprom41 = sext i32 %add40 to i64
  %39 = load i8*, i8** @dstimage, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  %40 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %40 to i32
  %41 = load i32, i32* %src1, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i8*, i8** @dstimage, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %42, i64 %idxprom44
  %43 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %43 to i32
  %sub47 = sub nsw i32 %conv43, %conv46
  %conv48 = sitofp i32 %sub47 to double
  %44 = load double, double* %dx, align 8
  %mul49 = fmul double %conv48, %44
  %add50 = fadd double %conv39, %mul49
  store double %add50, double* %in0, align 8
  %45 = load i32, i32* %src2, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load i8*, i8** @dstimage, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %46, i64 %idxprom51
  %47 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %47 to i32
  %conv54 = sitofp i32 %conv53 to double
  %48 = load i32, i32* %src2, align 4
  %49 = load i32, i32* @preview_bpp, align 4
  %add55 = add nsw i32 %48, %49
  %idxprom56 = sext i32 %add55 to i64
  %50 = load i8*, i8** @dstimage, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %50, i64 %idxprom56
  %51 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %51 to i32
  %52 = load i32, i32* %src2, align 4
  %idxprom59 = sext i32 %52 to i64
  %53 = load i8*, i8** @dstimage, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %53, i64 %idxprom59
  %54 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %54 to i32
  %sub62 = sub nsw i32 %conv58, %conv61
  %conv63 = sitofp i32 %sub62 to double
  %55 = load double, double* %dx, align 8
  %mul64 = fmul double %conv63, %55
  %add65 = fadd double %conv54, %mul64
  store double %add65, double* %in1, align 8
  %56 = load double, double* %in0, align 8
  %57 = load double, double* %in1, align 8
  %58 = load double, double* %in0, align 8
  %sub66 = fsub double %57, %58
  %59 = load double, double* %dy, align 8
  %mul67 = fmul double %sub66, %59
  %add68 = fadd double %56, %mul67
  store double %add68, double* %in2, align 8
  %60 = load double, double* %in2, align 8
  %conv69 = fptoui double %60 to i8
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %new_width.addr, align 4
  %mul70 = mul nsw i32 %61, %62
  %63 = load i32, i32* %x, align 4
  %add71 = add nsw i32 %mul70, %63
  %64 = load i32, i32* @preview_bpp, align 4
  %mul72 = mul nsw i32 %add71, %64
  %65 = load i32, i32* %z, align 4
  %add73 = add nsw i32 %mul72, %65
  %idxprom74 = sext i32 %add73 to i64
  %66 = load i8*, i8** %new_data, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %66, i64 %idxprom74
  store i8 %conv69, i8* %arrayidx75, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %67 = load i32, i32* %z, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %z, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end
  %68 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %68, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond.3

for.end.78:                                       ; preds = %for.cond.3
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %69 = load i32, i32* %y, align 4
  %inc80 = add nsw i32 %69, 1
  store i32 %inc80, i32* %y, align 4
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  %70 = load i8*, i8** @dstimage, align 8
  call void @g_free(i8* %70)
  %71 = load i8*, i8** %new_data, align 8
  store i8* %71, i8** @dstimage, align 8
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_image_get_active_layer(i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_layer_copy(i32) #1

declare i32 @gimp_layer_add_alpha(i32) #1

declare i32 @gimp_item_set_name(i32, i8*) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_frame() #0 {
entry:
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %color = alloca [4 x i8], align 1
  %xv = alloca double, align 8
  %yv = alloca double, align 8
  %padding = alloca i32, align 4
  store i32 0, i32* %progress, align 4
  %0 = load i32, i32* @yh, align 4
  %1 = load i32, i32* @yl, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* @xh, align 4
  %3 = load i32, i32* @xl, align 4
  %sub1 = sub nsw i32 %2, %3
  %mul = mul nsw i32 %sub, %sub1
  store i32 %mul, i32* %max_progress, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @destdrawable, align 8
  %5 = load i32, i32* @xl, align 4
  %6 = load i32, i32* @yl, align 4
  %7 = load i32, i32* @xh, align 4
  %8 = load i32, i32* @xl, align 4
  %sub2 = sub nsw i32 %7, %8
  %9 = load i32, i32* @yh, align 4
  %10 = load i32, i32* @yl, align 4
  %sub3 = sub nsw i32 %9, %10
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %4, i32 %5, i32 %6, i32 %sub2, i32 %sub3, i32 1, i32 1)
  %11 = load i32, i32* @layer_alpha, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @destdrawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %13)
  %tobool4 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %14 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %padding, align 4
  %15 = load i32, i32* @do_animate, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)) #4
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %call8 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call8, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %if.end
  %16 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %16, null
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %dest_row, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 4), align 4
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %if.else.70, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %19 = load i32, i32* %y, align 4
  store i32 %19, i32* %row, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.64, %if.then.10
  %20 = load i32, i32* %row, align 4
  %y12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %21 = load i32, i32* %y12, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %22 = load i32, i32* %h, align 4
  %add = add nsw i32 %21, %22
  %cmp13 = icmp slt i32 %20, %add
  br i1 %cmp13, label %for.body.14, label %for.end.66

for.body.14:                                      ; preds = %for.cond.11
  %23 = load i8*, i8** %dest_row, align 8
  store i8* %23, i8** %dest, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %24 = load i32, i32* %x, align 4
  store i32 %24, i32* %col, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.61, %for.body.14
  %25 = load i32, i32* %col, align 4
  %x16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %26 = load i32, i32* %x16, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %27 = load i32, i32* %w, align 4
  %add17 = add nsw i32 %26, %27
  %cmp18 = icmp slt i32 %25, %add17
  br i1 %cmp18, label %for.body.19, label %for.end.63

for.body.19:                                      ; preds = %for.cond.15
  %28 = load i32, i32* %progress, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %progress, align 4
  %29 = load double, double* @img2pre, align 8
  %30 = load i32, i32* %col, align 4
  %31 = load i32, i32* @xl, align 4
  %sub20 = sub nsw i32 %30, %31
  %conv = sitofp i32 %sub20 to double
  %mul21 = fmul double %29, %conv
  %32 = load double, double* @img2pre, align 8
  %33 = load i32, i32* %row, align 4
  %34 = load i32, i32* @yl, align 4
  %sub22 = sub nsw i32 %33, %34
  %conv23 = sitofp i32 %sub22 to double
  %mul24 = fmul double %32, %conv23
  call void @iwarp_get_deform_vector(double %mul21, double %mul24, double* %xv, double* %yv)
  %35 = load double, double* @animate_deform_value, align 8
  %36 = load double, double* %xv, align 8
  %mul25 = fmul double %36, %35
  store double %mul25, double* %xv, align 8
  %37 = load double, double* @animate_deform_value, align 8
  %38 = load double, double* %yv, align 8
  %mul26 = fmul double %38, %37
  store double %mul26, double* %yv, align 8
  %39 = load double, double* %xv, align 8
  %call27 = call double @fabs(double %39) #5
  %cmp28 = fcmp ogt double %call27, 0.000000e+00
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.19
  %40 = load double, double* %yv, align 8
  %call30 = call double @fabs(double %40) #5
  %cmp31 = fcmp ogt double %call30, 0.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %lor.lhs.false, %for.body.19
  %41 = load double, double* @pre2img, align 8
  %42 = load double, double* %xv, align 8
  %mul34 = fmul double %41, %42
  %43 = load i32, i32* %col, align 4
  %conv35 = sitofp i32 %43 to double
  %add36 = fadd double %mul34, %conv35
  %44 = load double, double* @pre2img, align 8
  %45 = load double, double* %yv, align 8
  %mul37 = fmul double %44, %45
  %46 = load i32, i32* %row, align 4
  %conv38 = sitofp i32 %46 to double
  %add39 = fadd double %mul37, %conv38
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @iwarp_get_point(double %add36, double %add39, i8* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %if.then.33
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @image_bpp, align 4
  %cmp41 = icmp slt i32 %47, %48
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom
  %50 = load i8, i8* %arrayidx, align 1
  %51 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %50, i8* %51, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %52 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %52, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %if.end.56

if.else:                                          ; preds = %lor.lhs.false
  %53 = load i32, i32* %col, align 4
  %54 = load i32, i32* %row, align 4
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  call void @iwarp_get_pixel(i32 %53, i32 %54, i8* %arraydecay45)
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.53, %if.else
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* @image_bpp, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.46
  %57 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i64 %idxprom50
  %58 = load i8, i8* %arrayidx51, align 1
  %59 = load i8*, i8** %dest, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr52, i8** %dest, align 8
  store i8 %58, i8* %59, align 1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %60 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %60, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.46

for.end.55:                                       ; preds = %for.cond.46
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %for.end
  %61 = load i32, i32* %padding, align 4
  %tobool57 = icmp ne i32 %61, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.56
  %62 = load i8*, i8** %dest, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr59, i8** %dest, align 8
  store i8 -1, i8* %62, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.56
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %63 = load i32, i32* %col, align 4
  %inc62 = add nsw i32 %63, 1
  store i32 %inc62, i32* %col, align 4
  br label %for.cond.15

for.end.63:                                       ; preds = %for.cond.15
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %64 = load i32, i32* %rowstride, align 4
  %65 = load i8*, i8** %dest_row, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_row, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end.63
  %66 = load i32, i32* %row, align 4
  %inc65 = add nsw i32 %66, 1
  store i32 %inc65, i32* %row, align 4
  br label %for.cond.11

for.end.66:                                       ; preds = %for.cond.11
  %67 = load i32, i32* %progress, align 4
  %conv67 = sitofp i32 %67 to double
  %68 = load i32, i32* %max_progress, align 4
  %conv68 = sitofp i32 %68 to double
  %div = fdiv double %conv67, %conv68
  %call69 = call i32 @gimp_progress_update(double %div)
  br label %if.end.82

if.else.70:                                       ; preds = %for.body
  %69 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 5), align 8
  %70 = load double, double* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 5), align 8
  %mul71 = fmul double %69, %70
  store double %mul71, double* @supersample_threshold_2, align 8
  %x72 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %71 = load i32, i32* %x72, align 4
  %y73 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %72 = load i32, i32* %y73, align 4
  %x74 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %73 = load i32, i32* %x74, align 4
  %w75 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %74 = load i32, i32* %w75, align 4
  %add76 = add nsw i32 %73, %74
  %y77 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %75 = load i32, i32* %y77, align 4
  %h78 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %76 = load i32, i32* %h78, align 4
  %add79 = add nsw i32 %75, %76
  %data80 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %77 = load i8*, i8** %data80, align 8
  %rowstride81 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %78 = load i32, i32* %rowstride81, align 4
  %79 = load i32, i32* %max_progress, align 4
  call void @iwarp_supersample(i32 %71, i32 %72, i32 %add76, i32 %add79, i8* %77, i32 %78, i32* %progress, i32 %79)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.70, %for.end.66
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %80 = load i8*, i8** %pr, align 8
  %call84 = call i8* @gimp_pixel_rgns_process(i8* %80)
  store i8* %call84, i8** %pr, align 8
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %call86 = call i32 @gimp_progress_update(double 1.000000e+00)
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** @destdrawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %81)
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** @destdrawable, align 8
  %drawable_id87 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 0
  %83 = load i32, i32* %drawable_id87, align 4
  %call88 = call i32 @gimp_drawable_merge_shadow(i32 %83, i32 1)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** @destdrawable, align 8
  %drawable_id89 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %84, i32 0, i32 0
  %85 = load i32, i32* %drawable_id89, align 4
  %86 = load i32, i32* @xl, align 4
  %87 = load i32, i32* @yl, align 4
  %88 = load i32, i32* @xh, align 4
  %89 = load i32, i32* @xl, align 4
  %sub90 = sub nsw i32 %88, %89
  %90 = load i32, i32* @yh, align 4
  %91 = load i32, i32* @yl, align 4
  %sub91 = sub nsw i32 %90, %91
  %call92 = call i32 @gimp_drawable_update(i32 %85, i32 %86, i32 %87, i32 %sub90, i32 %sub91)
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_image_undo_group_end(i32) #1

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal void @iwarp_get_point(double %x, double %y, i8* %color) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca i8*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %p0 = alloca [4 x i8], align 1
  %p1 = alloca [4 x i8], align 1
  %p2 = alloca [4 x i8], align 1
  %p3 = alloca [4 x i8], align 1
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %i = alloca i32, align 4
  %a0 = alloca double, align 8
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %alpha = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %color, i8** %color.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, i32* %xi, align 4
  %1 = load double, double* %y.addr, align 8
  %conv1 = fptosi double %1 to i32
  store i32 %conv1, i32* %yi, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load i32, i32* %xi, align 4
  %conv2 = sitofp i32 %3 to double
  %sub = fsub double %2, %conv2
  store double %sub, double* %dx, align 8
  %4 = load double, double* %y.addr, align 8
  %5 = load i32, i32* %yi, align 4
  %conv3 = sitofp i32 %5 to double
  %sub4 = fsub double %4, %conv3
  store double %sub4, double* %dy, align 8
  %6 = load i32, i32* %xi, align 4
  %7 = load i32, i32* %yi, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i32 0
  call void @iwarp_get_pixel(i32 %6, i32 %7, i8* %arraydecay)
  %8 = load i32, i32* %xi, align 4
  %add = add nsw i32 %8, 1
  %9 = load i32, i32* %yi, align 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i32 0
  call void @iwarp_get_pixel(i32 %add, i32 %9, i8* %arraydecay5)
  %10 = load i32, i32* %xi, align 4
  %11 = load i32, i32* %yi, align 4
  %add6 = add nsw i32 %11, 1
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i32 0
  call void @iwarp_get_pixel(i32 %10, i32 %add6, i8* %arraydecay7)
  %12 = load i32, i32* %xi, align 4
  %add8 = add nsw i32 %12, 1
  %13 = load i32, i32* %yi, align 4
  %add9 = add nsw i32 %13, 1
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i32 0
  call void @iwarp_get_pixel(i32 %add8, i32 %add9, i8* %arraydecay10)
  %14 = load i32, i32* @layer_alpha, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load i32, i32* @image_bpp, align 4
  %sub11 = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub11 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv12 = uitofp i8 %16 to double
  store double %conv12, double* %a0, align 8
  %17 = load i32, i32* @image_bpp, align 4
  %sub13 = sub nsw i32 %17, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i64 %idxprom14
  %18 = load i8, i8* %arrayidx15, align 1
  %conv16 = uitofp i8 %18 to double
  store double %conv16, double* %a1, align 8
  %19 = load i32, i32* @image_bpp, align 4
  %sub17 = sub nsw i32 %19, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = uitofp i8 %20 to double
  store double %conv20, double* %a2, align 8
  %21 = load i32, i32* @image_bpp, align 4
  %sub21 = sub nsw i32 %21, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i64 %idxprom22
  %22 = load i8, i8* %arrayidx23, align 1
  %conv24 = uitofp i8 %22 to double
  store double %conv24, double* %a3, align 8
  %23 = load double, double* %a0, align 8
  %24 = load double, double* %dx, align 8
  %25 = load double, double* %a1, align 8
  %26 = load double, double* %a0, align 8
  %sub25 = fsub double %25, %26
  %mul = fmul double %24, %sub25
  %add26 = fadd double %23, %mul
  store double %add26, double* %m0, align 8
  %27 = load double, double* %a2, align 8
  %28 = load double, double* %dx, align 8
  %29 = load double, double* %a3, align 8
  %30 = load double, double* %a2, align 8
  %sub27 = fsub double %29, %30
  %mul28 = fmul double %28, %sub27
  %add29 = fadd double %27, %mul28
  store double %add29, double* %m1, align 8
  %31 = load double, double* %m0, align 8
  %32 = load double, double* %dy, align 8
  %33 = load double, double* %m1, align 8
  %34 = load double, double* %m0, align 8
  %sub30 = fsub double %33, %34
  %mul31 = fmul double %32, %sub30
  %add32 = fadd double %31, %mul31
  store double %add32, double* %alpha, align 8
  %35 = load double, double* %alpha, align 8
  %conv33 = fptoui double %35 to i8
  %36 = load i32, i32* @image_bpp, align 4
  %sub34 = sub nsw i32 %36, 1
  %idxprom35 = sext i32 %sub34 to i64
  %37 = load i8*, i8** %color.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %37, i64 %idxprom35
  store i8 %conv33, i8* %arrayidx36, align 1
  %38 = load i32, i32* @image_bpp, align 4
  %sub37 = sub nsw i32 %38, 1
  %idxprom38 = sext i32 %sub37 to i64
  %39 = load i8*, i8** %color.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 %idxprom38
  %40 = load i8, i8* %arrayidx39, align 1
  %tobool40 = icmp ne i8 %40, 0
  br i1 %tobool40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.41
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @image_bpp, align 4
  %sub42 = sub nsw i32 %42, 1
  %cmp = icmp slt i32 %41, %sub42
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load double, double* %a0, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i64 %idxprom44
  %45 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %45 to i32
  %conv47 = sitofp i32 %conv46 to double
  %mul48 = fmul double %43, %conv47
  %46 = load double, double* %dx, align 8
  %47 = load double, double* %a1, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %48 to i64
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i64 %idxprom49
  %49 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %49 to i32
  %conv52 = sitofp i32 %conv51 to double
  %mul53 = fmul double %47, %conv52
  %50 = load double, double* %a0, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i64 %idxprom54
  %52 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %52 to i32
  %conv57 = sitofp i32 %conv56 to double
  %mul58 = fmul double %50, %conv57
  %sub59 = fsub double %mul53, %mul58
  %mul60 = fmul double %46, %sub59
  %add61 = fadd double %mul48, %mul60
  store double %add61, double* %m0, align 8
  %53 = load double, double* %a2, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %54 to i64
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom62
  %55 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %55 to i32
  %conv65 = sitofp i32 %conv64 to double
  %mul66 = fmul double %53, %conv65
  %56 = load double, double* %dx, align 8
  %57 = load double, double* %a3, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %58 to i64
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i64 %idxprom67
  %59 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %59 to i32
  %conv70 = sitofp i32 %conv69 to double
  %mul71 = fmul double %57, %conv70
  %60 = load double, double* %a2, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %61 to i64
  %arrayidx73 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom72
  %62 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %conv75 = sitofp i32 %conv74 to double
  %mul76 = fmul double %60, %conv75
  %sub77 = fsub double %mul71, %mul76
  %mul78 = fmul double %56, %sub77
  %add79 = fadd double %mul66, %mul78
  store double %add79, double* %m1, align 8
  %63 = load double, double* %m0, align 8
  %64 = load double, double* %dy, align 8
  %65 = load double, double* %m1, align 8
  %66 = load double, double* %m0, align 8
  %sub80 = fsub double %65, %66
  %mul81 = fmul double %64, %sub80
  %add82 = fadd double %63, %mul81
  %67 = load double, double* %alpha, align 8
  %div = fdiv double %add82, %67
  %conv83 = fptoui double %div to i8
  %68 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %68 to i64
  %69 = load i8*, i8** %color.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %69, i64 %idxprom84
  store i8 %conv83, i8* %arrayidx85, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, i32* %i, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.127

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.124, %if.else
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* @image_bpp, align 4
  %cmp87 = icmp slt i32 %71, %72
  br i1 %cmp87, label %for.body.89, label %for.end.126

for.body.89:                                      ; preds = %for.cond.86
  %73 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %73 to i64
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i64 %idxprom90
  %74 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %74 to i32
  %conv93 = sitofp i32 %conv92 to double
  %75 = load double, double* %dx, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %76 to i64
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i64 %idxprom94
  %77 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %77 to i32
  %78 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %78 to i64
  %arrayidx98 = getelementptr inbounds [4 x i8], [4 x i8]* %p0, i32 0, i64 %idxprom97
  %79 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %79 to i32
  %sub100 = sub nsw i32 %conv96, %conv99
  %conv101 = sitofp i32 %sub100 to double
  %mul102 = fmul double %75, %conv101
  %add103 = fadd double %conv93, %mul102
  store double %add103, double* %m0, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %80 to i64
  %arrayidx105 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom104
  %81 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %81 to i32
  %conv107 = sitofp i32 %conv106 to double
  %82 = load double, double* %dx, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %83 to i64
  %arrayidx109 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i64 %idxprom108
  %84 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %84 to i32
  %85 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %85 to i64
  %arrayidx112 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom111
  %86 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %86 to i32
  %sub114 = sub nsw i32 %conv110, %conv113
  %conv115 = sitofp i32 %sub114 to double
  %mul116 = fmul double %82, %conv115
  %add117 = fadd double %conv107, %mul116
  store double %add117, double* %m1, align 8
  %87 = load double, double* %m0, align 8
  %88 = load double, double* %dy, align 8
  %89 = load double, double* %m1, align 8
  %90 = load double, double* %m0, align 8
  %sub118 = fsub double %89, %90
  %mul119 = fmul double %88, %sub118
  %add120 = fadd double %87, %mul119
  %conv121 = fptoui double %add120 to i8
  %91 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %91 to i64
  %92 = load i8*, i8** %color.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %92, i64 %idxprom122
  store i8 %conv121, i8* %arrayidx123, align 1
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.89
  %93 = load i32, i32* %i, align 4
  %inc125 = add nsw i32 %93, 1
  store i32 %inc125, i32* %i, align 4
  br label %for.cond.86

for.end.126:                                      ; preds = %for.cond.86
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.126, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_get_pixel(i32 %x, i32 %y, i8* %pixel) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* @xl, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* @xh, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* @yl, align 4
  %cmp3 = icmp sge i32 %4, %5
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* @yh, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* @tile_width, align 4
  %div = sdiv i32 %8, %9
  store i32 %div, i32* %col, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* @tile_height, align 4
  %div6 = sdiv i32 %10, %11
  store i32 %div6, i32* %row, align 4
  %12 = load i32, i32* %col, align 4
  %13 = load i32, i32* @iwarp_get_pixel.old_col, align 4
  %cmp7 = icmp ne i32 %12, %13
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load i32, i32* %row, align 4
  %15 = load i32, i32* @iwarp_get_pixel.old_row, align 4
  %cmp8 = icmp ne i32 %14, %15
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  %16 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  %tobool = icmp ne %struct._GimpTile* %16, null
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.9
  %17 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.9
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %19 = load i32, i32* %row, align 4
  %20 = load i32, i32* %col, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable* %18, i32 0, i32 %19, i32 %20)
  store %struct._GimpTile* %call, %struct._GimpTile** @tile, align 8
  %21 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %21)
  %22 = load i32, i32* %col, align 4
  store i32 %22, i32* @iwarp_get_pixel.old_col, align 4
  %23 = load i32, i32* %row, align 4
  store i32 %23, i32* @iwarp_get_pixel.old_row, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %lor.lhs.false
  %24 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  %data12 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %24, i32 0, i32 6
  %25 = load i8*, i8** %data12, align 8
  %26 = load %struct._GimpTile*, %struct._GimpTile** @tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %26, i32 0, i32 0
  %27 = load i32, i32* %ewidth, align 4
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* @tile_height, align 4
  %rem = srem i32 %28, %29
  %mul = mul i32 %27, %rem
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* @tile_width, align 4
  %rem13 = srem i32 %30, %31
  %add = add i32 %mul, %rem13
  %32 = load i32, i32* @image_bpp, align 4
  %mul14 = mul i32 %add, %32
  %idx.ext = zext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* @image_bpp, align 4
  %cmp15 = icmp slt i32 %33, %34
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i8*, i8** %data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %data, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %pixel.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr16, i8** %pixel.addr, align 8
  store i8 %36, i8* %37, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %39 = load i8*, i8** %pixel.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 3
  store i8 0, i8* %arrayidx, align 1
  %40 = load i8*, i8** %pixel.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %40, i64 2
  store i8 0, i8* %arrayidx17, align 1
  %41 = load i8*, i8** %pixel.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 0, i8* %arrayidx18, align 1
  %42 = load i8*, i8** %pixel.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %arrayidx19, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @iwarp_supersample(i32 %sxl, i32 %syl, i32 %sxr, i32 %syr, i8* %dest_data, i32 %stride, i32* %progress, i32 %max_progress) #0 {
entry:
  %sxl.addr = alloca i32, align 4
  %syl.addr = alloca i32, align 4
  %sxr.addr = alloca i32, align 4
  %syr.addr = alloca i32, align 4
  %dest_data.addr = alloca i8*, align 8
  %stride.addr = alloca i32, align 4
  %progress.addr = alloca i32*, align 8
  %max_progress.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %cc = alloca i32, align 4
  %srow = alloca %struct._GimpVector2*, align 8
  %srow_old = alloca %struct._GimpVector2*, align 8
  %vh = alloca %struct._GimpVector2*, align 8
  %xv = alloca double, align 8
  %yv = alloca double, align 8
  %color = alloca [4 x i32], align 16
  %dest = alloca i8*, align 8
  store i32 %sxl, i32* %sxl.addr, align 4
  store i32 %syl, i32* %syl.addr, align 4
  store i32 %sxr, i32* %sxr.addr, align 4
  store i32 %syr, i32* %syr.addr, align 4
  store i8* %dest_data, i8** %dest_data.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  store i32* %progress, i32** %progress.addr, align 8
  store i32 %max_progress, i32* %max_progress.addr, align 4
  %0 = load i32, i32* %sxr.addr, align 4
  %1 = load i32, i32* %sxl.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 16)
  %2 = bitcast i8* %call to %struct._GimpVector2*
  store %struct._GimpVector2* %2, %struct._GimpVector2** %srow, align 8
  %3 = load i32, i32* %sxr.addr, align 4
  %4 = load i32, i32* %sxl.addr, align 4
  %sub1 = sub nsw i32 %3, %4
  %add2 = add nsw i32 %sub1, 1
  %conv3 = sext i32 %add2 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 16)
  %5 = bitcast i8* %call4 to %struct._GimpVector2*
  store %struct._GimpVector2* %5, %struct._GimpVector2** %srow_old, align 8
  %6 = load i32, i32* %sxl.addr, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %sxr.addr, align 4
  %add5 = add nsw i32 %8, 1
  %cmp = icmp slt i32 %7, %add5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load double, double* @img2pre, align 8
  %10 = load i32, i32* %i, align 4
  %conv7 = sitofp i32 %10 to double
  %add8 = fadd double -5.000000e-01, %conv7
  %11 = load i32, i32* @xl, align 4
  %conv9 = sitofp i32 %11 to double
  %sub10 = fsub double %add8, %conv9
  %mul = fmul double %9, %sub10
  %12 = load double, double* @img2pre, align 8
  %13 = load i32, i32* %syl.addr, align 4
  %conv11 = sitofp i32 %13 to double
  %add12 = fadd double -5.000000e-01, %conv11
  %14 = load i32, i32* @yl, align 4
  %conv13 = sitofp i32 %14 to double
  %sub14 = fsub double %add12, %conv13
  %mul15 = fmul double %12, %sub14
  call void @iwarp_get_deform_vector(double %mul, double %mul15, double* %xv, double* %yv)
  %15 = load double, double* @animate_deform_value, align 8
  %16 = load double, double* %xv, align 8
  %mul16 = fmul double %16, %15
  store double %mul16, double* %xv, align 8
  %17 = load double, double* @animate_deform_value, align 8
  %18 = load double, double* %yv, align 8
  %mul17 = fmul double %18, %17
  store double %mul17, double* %yv, align 8
  %19 = load double, double* %xv, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %sxl.addr, align 4
  %sub18 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub18 to i64
  %22 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %22, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %19, double* %x, align 8
  %23 = load double, double* %yv, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %sxl.addr, align 4
  %sub19 = sub nsw i32 %24, %25
  %idxprom20 = sext i32 %sub19 to i64
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %26, i64 %idxprom20
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx21, i32 0, i32 1
  store double %23, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %syl.addr, align 4
  store i32 %28, i32* %col, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.108, %for.end
  %29 = load i32, i32* %col, align 4
  %30 = load i32, i32* %syr.addr, align 4
  %cmp23 = icmp slt i32 %29, %30
  br i1 %cmp23, label %for.body.25, label %for.end.110

for.body.25:                                      ; preds = %for.cond.22
  %31 = load double, double* @img2pre, align 8
  %32 = load i32, i32* %sxl.addr, align 4
  %conv26 = sitofp i32 %32 to double
  %add27 = fadd double -5.000000e-01, %conv26
  %33 = load i32, i32* @xl, align 4
  %conv28 = sitofp i32 %33 to double
  %sub29 = fsub double %add27, %conv28
  %mul30 = fmul double %31, %sub29
  %34 = load double, double* @img2pre, align 8
  %35 = load i32, i32* %col, align 4
  %conv31 = sitofp i32 %35 to double
  %add32 = fadd double 5.000000e-01, %conv31
  %36 = load i32, i32* @yl, align 4
  %conv33 = sitofp i32 %36 to double
  %sub34 = fsub double %add32, %conv33
  %mul35 = fmul double %34, %sub34
  call void @iwarp_get_deform_vector(double %mul30, double %mul35, double* %xv, double* %yv)
  %37 = load double, double* @animate_deform_value, align 8
  %38 = load double, double* %xv, align 8
  %mul36 = fmul double %38, %37
  store double %mul36, double* %xv, align 8
  %39 = load double, double* @animate_deform_value, align 8
  %40 = load double, double* %yv, align 8
  %mul37 = fmul double %40, %39
  store double %mul37, double* %yv, align 8
  %41 = load double, double* %xv, align 8
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %42, i64 0
  %x39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx38, i32 0, i32 0
  store double %41, double* %x39, align 8
  %43 = load double, double* %yv, align 8
  %44 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %44, i64 0
  %y41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx40, i32 0, i32 1
  store double %43, double* %y41, align 8
  %45 = load i32, i32* %sxl.addr, align 4
  store i32 %45, i32* %row, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.105, %for.body.25
  %46 = load i32, i32* %row, align 4
  %47 = load i32, i32* %sxr.addr, align 4
  %cmp43 = icmp slt i32 %46, %47
  br i1 %cmp43, label %for.body.45, label %for.end.107

for.body.45:                                      ; preds = %for.cond.42
  %48 = load double, double* @img2pre, align 8
  %49 = load i32, i32* %row, align 4
  %conv46 = sitofp i32 %49 to double
  %add47 = fadd double 5.000000e-01, %conv46
  %50 = load i32, i32* @xl, align 4
  %conv48 = sitofp i32 %50 to double
  %sub49 = fsub double %add47, %conv48
  %mul50 = fmul double %48, %sub49
  %51 = load double, double* @img2pre, align 8
  %52 = load i32, i32* %col, align 4
  %conv51 = sitofp i32 %52 to double
  %add52 = fadd double 5.000000e-01, %conv51
  %53 = load i32, i32* @yl, align 4
  %conv53 = sitofp i32 %53 to double
  %sub54 = fsub double %add52, %conv53
  %mul55 = fmul double %51, %sub54
  call void @iwarp_get_deform_vector(double %mul50, double %mul55, double* %xv, double* %yv)
  %54 = load double, double* @animate_deform_value, align 8
  %55 = load double, double* %xv, align 8
  %mul56 = fmul double %55, %54
  store double %mul56, double* %xv, align 8
  %56 = load double, double* @animate_deform_value, align 8
  %57 = load double, double* %yv, align 8
  %mul57 = fmul double %57, %56
  store double %mul57, double* %yv, align 8
  %58 = load double, double* %xv, align 8
  %59 = load i32, i32* %row, align 4
  %60 = load i32, i32* %sxl.addr, align 4
  %sub58 = sub nsw i32 %59, %60
  %add59 = add nsw i32 %sub58, 1
  %idxprom60 = sext i32 %add59 to i64
  %61 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %61, i64 %idxprom60
  %x62 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx61, i32 0, i32 0
  store double %58, double* %x62, align 8
  %62 = load double, double* %yv, align 8
  %63 = load i32, i32* %row, align 4
  %64 = load i32, i32* %sxl.addr, align 4
  %sub63 = sub nsw i32 %63, %64
  %add64 = add nsw i32 %sub63, 1
  %idxprom65 = sext i32 %add64 to i64
  %65 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx66 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %65, i64 %idxprom65
  %y67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx66, i32 0, i32 1
  store double %62, double* %y67, align 8
  store i32 0, i32* %cc, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i64 3
  store i32 0, i32* %arrayidx68, align 4
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i64 2
  store i32 0, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i64 1
  store i32 0, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i64 0
  store i32 0, i32* %arrayidx71, align 4
  %66 = load i32, i32* %row, align 4
  %67 = load i32, i32* %sxl.addr, align 4
  %sub72 = sub nsw i32 %66, %67
  %idxprom73 = sext i32 %sub72 to i64
  %68 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %68, i64 %idxprom73
  %69 = load i32, i32* %row, align 4
  %70 = load i32, i32* %sxl.addr, align 4
  %sub75 = sub nsw i32 %69, %70
  %add76 = add nsw i32 %sub75, 1
  %idxprom77 = sext i32 %add76 to i64
  %71 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  %arrayidx78 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %71, i64 %idxprom77
  %72 = load i32, i32* %row, align 4
  %73 = load i32, i32* %sxl.addr, align 4
  %sub79 = sub nsw i32 %72, %73
  %idxprom80 = sext i32 %sub79 to i64
  %74 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx81 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %74, i64 %idxprom80
  %75 = load i32, i32* %row, align 4
  %76 = load i32, i32* %sxl.addr, align 4
  %sub82 = sub nsw i32 %75, %76
  %add83 = add nsw i32 %sub82, 1
  %idxprom84 = sext i32 %add83 to i64
  %77 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %77, i64 %idxprom84
  %78 = load i32, i32* %row, align 4
  %conv86 = sitofp i32 %78 to double
  %79 = load i32, i32* %col, align 4
  %conv87 = sitofp i32 %79 to double
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i32 0
  %80 = bitcast %struct._GimpVector2* %arrayidx74 to { double, double }*
  %81 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 0
  %82 = load double, double* %81, align 1
  %83 = getelementptr { double, double }, { double, double }* %80, i32 0, i32 1
  %84 = load double, double* %83, align 1
  %85 = bitcast %struct._GimpVector2* %arrayidx78 to { double, double }*
  %86 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 0
  %87 = load double, double* %86, align 1
  %88 = getelementptr { double, double }, { double, double }* %85, i32 0, i32 1
  %89 = load double, double* %88, align 1
  %90 = bitcast %struct._GimpVector2* %arrayidx81 to { double, double }*
  %91 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 0
  %92 = load double, double* %91, align 1
  %93 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 1
  %94 = load double, double* %93, align 1
  %95 = bitcast %struct._GimpVector2* %arrayidx85 to { double, double }*
  %96 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = load double, double* %96, align 1
  %98 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = load double, double* %98, align 1
  call void @iwarp_getsample(double %82, double %84, double %87, double %89, double %92, double %94, double %97, double %99, double %conv86, double %conv87, i32* %arraydecay, i32* %cc, i32 0, double 1.000000e+00)
  %100 = load i8*, i8** %dest_data.addr, align 8
  %101 = load i32, i32* %col, align 4
  %102 = load i32, i32* %syl.addr, align 4
  %sub88 = sub nsw i32 %101, %102
  %103 = load i32, i32* %stride.addr, align 4
  %mul89 = mul nsw i32 %sub88, %103
  %idx.ext = sext i32 %mul89 to i64
  %add.ptr = getelementptr inbounds i8, i8* %100, i64 %idx.ext
  %104 = load i32, i32* %row, align 4
  %105 = load i32, i32* %sxl.addr, align 4
  %sub90 = sub nsw i32 %104, %105
  %106 = load i32, i32* @image_bpp, align 4
  %mul91 = mul nsw i32 %sub90, %106
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext92
  store i8* %add.ptr93, i8** %dest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.101, %for.body.45
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* @image_bpp, align 4
  %cmp95 = icmp slt i32 %107, %108
  br i1 %cmp95, label %for.body.97, label %for.end.103

for.body.97:                                      ; preds = %for.cond.94
  %109 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %109 to i64
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %color, i32 0, i64 %idxprom98
  %110 = load i32, i32* %arrayidx99, align 4
  %111 = load i32, i32* %cc, align 4
  %div = sdiv i32 %110, %111
  %conv100 = trunc i32 %div to i8
  %112 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv100, i8* %112, align 1
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.97
  %113 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %113, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.94

for.end.103:                                      ; preds = %for.cond.94
  %114 = load i32*, i32** %progress.addr, align 8
  %115 = load i32, i32* %114, align 4
  %inc104 = add nsw i32 %115, 1
  store i32 %inc104, i32* %114, align 4
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.103
  %116 = load i32, i32* %row, align 4
  %inc106 = add nsw i32 %116, 1
  store i32 %inc106, i32* %row, align 4
  br label %for.cond.42

for.end.107:                                      ; preds = %for.cond.42
  %117 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  store %struct._GimpVector2* %117, %struct._GimpVector2** %vh, align 8
  %118 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  store %struct._GimpVector2* %118, %struct._GimpVector2** %srow_old, align 8
  %119 = load %struct._GimpVector2*, %struct._GimpVector2** %vh, align 8
  store %struct._GimpVector2* %119, %struct._GimpVector2** %srow, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %120 = load i32, i32* %col, align 4
  %inc109 = add nsw i32 %120, 1
  store i32 %inc109, i32* %col, align 4
  br label %for.cond.22

for.end.110:                                      ; preds = %for.cond.22
  %121 = load i32*, i32** %progress.addr, align 8
  %122 = load i32, i32* %121, align 4
  %conv111 = sitofp i32 %122 to double
  %123 = load i32, i32* %max_progress.addr, align 4
  %conv112 = sitofp i32 %123 to double
  %div113 = fdiv double %conv111, %conv112
  %call114 = call i32 @gimp_progress_update(double %div113)
  %124 = load %struct._GimpVector2*, %struct._GimpVector2** %srow, align 8
  %125 = bitcast %struct._GimpVector2* %124 to i8*
  call void @g_free(i8* %125)
  %126 = load %struct._GimpVector2*, %struct._GimpVector2** %srow_old, align 8
  %127 = bitcast %struct._GimpVector2* %126 to i8*
  call void @g_free(i8* %127)
  ret void
}

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare %struct._GimpTile* @gimp_drawable_get_tile(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

; Function Attrs: nounwind uwtable
define internal void @iwarp_getsample(double %v0.coerce0, double %v0.coerce1, double %v1.coerce0, double %v1.coerce1, double %v2.coerce0, double %v2.coerce1, double %v3.coerce0, double %v3.coerce1, double %x, double %y, i32* %sample, i32* %cc, i32 %depth, double %scale) #0 {
entry:
  %v0 = alloca %struct._GimpVector2, align 8
  %v1 = alloca %struct._GimpVector2, align 8
  %v2 = alloca %struct._GimpVector2, align 8
  %v3 = alloca %struct._GimpVector2, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %sample.addr = alloca i32*, align 8
  %cc.addr = alloca i32*, align 8
  %depth.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %i = alloca i32, align 4
  %xv = alloca double, align 8
  %yv = alloca double, align 8
  %v01 = alloca %struct._GimpVector2, align 8
  %v13 = alloca %struct._GimpVector2, align 8
  %v23 = alloca %struct._GimpVector2, align 8
  %v02 = alloca %struct._GimpVector2, align 8
  %vm = alloca %struct._GimpVector2, align 8
  %c = alloca [4 x i8], align 1
  %0 = bitcast %struct._GimpVector2* %v0 to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %v0.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %v0.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %v1 to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %v1.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %v1.coerce1, double* %5
  %6 = bitcast %struct._GimpVector2* %v2 to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %v2.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %v2.coerce1, double* %8
  %9 = bitcast %struct._GimpVector2* %v3 to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  store double %v3.coerce0, double* %10
  %11 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  store double %v3.coerce1, double* %11
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32* %sample, i32** %sample.addr, align 8
  store i32* %cc, i32** %cc.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store double %scale, double* %scale.addr, align 8
  %12 = load i32, i32* %depth.addr, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.iwarp_vals_t, %struct.iwarp_vals_t* @iwarp_vals, i32 0, i32 6), align 4
  %cmp = icmp sge i32 %12, %13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @iwarp_supersample_test(%struct._GimpVector2* %v0, %struct._GimpVector2* %v1, %struct._GimpVector2* %v2, %struct._GimpVector2* %v3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load double, double* @img2pre, align 8
  %15 = load double, double* %x.addr, align 8
  %16 = load i32, i32* @xl, align 4
  %conv = sitofp i32 %16 to double
  %sub = fsub double %15, %conv
  %mul = fmul double %14, %sub
  %17 = load double, double* @img2pre, align 8
  %18 = load double, double* %y.addr, align 8
  %19 = load i32, i32* @yl, align 4
  %conv1 = sitofp i32 %19 to double
  %sub2 = fsub double %18, %conv1
  %mul3 = fmul double %17, %sub2
  call void @iwarp_get_deform_vector(double %mul, double %mul3, double* %xv, double* %yv)
  %20 = load double, double* @animate_deform_value, align 8
  %21 = load double, double* %xv, align 8
  %mul4 = fmul double %21, %20
  store double %mul4, double* %xv, align 8
  %22 = load double, double* @animate_deform_value, align 8
  %23 = load double, double* %yv, align 8
  %mul5 = fmul double %23, %22
  store double %mul5, double* %yv, align 8
  %24 = load double, double* @pre2img, align 8
  %25 = load double, double* %xv, align 8
  %mul6 = fmul double %24, %25
  %26 = load double, double* %x.addr, align 8
  %add = fadd double %mul6, %26
  %27 = load double, double* @pre2img, align 8
  %28 = load double, double* %yv, align 8
  %mul7 = fmul double %27, %28
  %29 = load double, double* %y.addr, align 8
  %add8 = fadd double %mul7, %29
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i32 0
  call void @iwarp_get_point(double %add, double %add8, i8* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* @image_bpp, align 4
  %cmp9 = icmp slt i32 %30, %31
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1
  %conv11 = zext i8 %33 to i32
  %34 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %34 to i64
  %35 = load i32*, i32** %sample.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %35, i64 %idxprom12
  %36 = load i32, i32* %arrayidx13, align 4
  %add14 = add nsw i32 %36, %conv11
  store i32 %add14, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32*, i32** %cc.addr, align 8
  %39 = load i32, i32* %38, align 4
  %inc15 = add nsw i32 %39, 1
  store i32 %inc15, i32* %38, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %40 = load double, double* %scale.addr, align 8
  %mul16 = fmul double %40, 5.000000e-01
  store double %mul16, double* %scale.addr, align 8
  %41 = load double, double* @img2pre, align 8
  %42 = load double, double* %x.addr, align 8
  %43 = load i32, i32* @xl, align 4
  %conv17 = sitofp i32 %43 to double
  %sub18 = fsub double %42, %conv17
  %mul19 = fmul double %41, %sub18
  %44 = load double, double* @img2pre, align 8
  %45 = load double, double* %y.addr, align 8
  %46 = load i32, i32* @yl, align 4
  %conv20 = sitofp i32 %46 to double
  %sub21 = fsub double %45, %conv20
  %mul22 = fmul double %44, %sub21
  call void @iwarp_get_deform_vector(double %mul19, double %mul22, double* %xv, double* %yv)
  %47 = load double, double* @animate_deform_value, align 8
  %48 = load double, double* %xv, align 8
  %mul23 = fmul double %48, %47
  store double %mul23, double* %xv, align 8
  %49 = load double, double* @animate_deform_value, align 8
  %50 = load double, double* %yv, align 8
  %mul24 = fmul double %50, %49
  store double %mul24, double* %yv, align 8
  %51 = load double, double* @pre2img, align 8
  %52 = load double, double* %xv, align 8
  %mul25 = fmul double %51, %52
  %53 = load double, double* %x.addr, align 8
  %add26 = fadd double %mul25, %53
  %54 = load double, double* @pre2img, align 8
  %55 = load double, double* %yv, align 8
  %mul27 = fmul double %54, %55
  %56 = load double, double* %y.addr, align 8
  %add28 = fadd double %mul27, %56
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i32 0
  call void @iwarp_get_point(double %add26, double %add28, i8* %arraydecay29)
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %if.else
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* @image_bpp, align 4
  %cmp31 = icmp slt i32 %57, %58
  br i1 %cmp31, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.30
  %59 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %59 to i64
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 %idxprom34
  %60 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %60 to i32
  %61 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %61 to i64
  %62 = load i32*, i32** %sample.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %62, i64 %idxprom37
  %63 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %63, %conv36
  store i32 %add39, i32* %arrayidx38, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.33
  %64 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %64, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %65 = load i32*, i32** %cc.addr, align 8
  %66 = load i32, i32* %65, align 4
  %inc43 = add nsw i32 %66, 1
  store i32 %inc43, i32* %65, align 4
  %67 = load double, double* %xv, align 8
  %x44 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vm, i32 0, i32 0
  store double %67, double* %x44, align 8
  %68 = load double, double* %yv, align 8
  %y45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %vm, i32 0, i32 1
  store double %68, double* %y45, align 8
  %69 = load double, double* @img2pre, align 8
  %70 = load double, double* %x.addr, align 8
  %71 = load i32, i32* @xl, align 4
  %conv46 = sitofp i32 %71 to double
  %sub47 = fsub double %70, %conv46
  %mul48 = fmul double %69, %sub47
  %72 = load double, double* @img2pre, align 8
  %73 = load double, double* %y.addr, align 8
  %74 = load i32, i32* @yl, align 4
  %conv49 = sitofp i32 %74 to double
  %sub50 = fsub double %73, %conv49
  %75 = load double, double* %scale.addr, align 8
  %sub51 = fsub double %sub50, %75
  %mul52 = fmul double %72, %sub51
  call void @iwarp_get_deform_vector(double %mul48, double %mul52, double* %xv, double* %yv)
  %76 = load double, double* @animate_deform_value, align 8
  %77 = load double, double* %xv, align 8
  %mul53 = fmul double %77, %76
  store double %mul53, double* %xv, align 8
  %78 = load double, double* @animate_deform_value, align 8
  %79 = load double, double* %yv, align 8
  %mul54 = fmul double %79, %78
  store double %mul54, double* %yv, align 8
  %80 = load double, double* %xv, align 8
  %x55 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v01, i32 0, i32 0
  store double %80, double* %x55, align 8
  %81 = load double, double* %yv, align 8
  %y56 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v01, i32 0, i32 1
  store double %81, double* %y56, align 8
  %82 = load double, double* @img2pre, align 8
  %83 = load double, double* %x.addr, align 8
  %84 = load i32, i32* @xl, align 4
  %conv57 = sitofp i32 %84 to double
  %sub58 = fsub double %83, %conv57
  %85 = load double, double* %scale.addr, align 8
  %add59 = fadd double %sub58, %85
  %mul60 = fmul double %82, %add59
  %86 = load double, double* @img2pre, align 8
  %87 = load double, double* %y.addr, align 8
  %88 = load i32, i32* @yl, align 4
  %conv61 = sitofp i32 %88 to double
  %sub62 = fsub double %87, %conv61
  %mul63 = fmul double %86, %sub62
  call void @iwarp_get_deform_vector(double %mul60, double %mul63, double* %xv, double* %yv)
  %89 = load double, double* @animate_deform_value, align 8
  %90 = load double, double* %xv, align 8
  %mul64 = fmul double %90, %89
  store double %mul64, double* %xv, align 8
  %91 = load double, double* @animate_deform_value, align 8
  %92 = load double, double* %yv, align 8
  %mul65 = fmul double %92, %91
  store double %mul65, double* %yv, align 8
  %93 = load double, double* %xv, align 8
  %x66 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v13, i32 0, i32 0
  store double %93, double* %x66, align 8
  %94 = load double, double* %yv, align 8
  %y67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v13, i32 0, i32 1
  store double %94, double* %y67, align 8
  %95 = load double, double* @img2pre, align 8
  %96 = load double, double* %x.addr, align 8
  %97 = load i32, i32* @xl, align 4
  %conv68 = sitofp i32 %97 to double
  %sub69 = fsub double %96, %conv68
  %mul70 = fmul double %95, %sub69
  %98 = load double, double* @img2pre, align 8
  %99 = load double, double* %y.addr, align 8
  %100 = load i32, i32* @yl, align 4
  %conv71 = sitofp i32 %100 to double
  %sub72 = fsub double %99, %conv71
  %101 = load double, double* %scale.addr, align 8
  %add73 = fadd double %sub72, %101
  %mul74 = fmul double %98, %add73
  call void @iwarp_get_deform_vector(double %mul70, double %mul74, double* %xv, double* %yv)
  %102 = load double, double* @animate_deform_value, align 8
  %103 = load double, double* %xv, align 8
  %mul75 = fmul double %103, %102
  store double %mul75, double* %xv, align 8
  %104 = load double, double* @animate_deform_value, align 8
  %105 = load double, double* %yv, align 8
  %mul76 = fmul double %105, %104
  store double %mul76, double* %yv, align 8
  %106 = load double, double* %xv, align 8
  %x77 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v23, i32 0, i32 0
  store double %106, double* %x77, align 8
  %107 = load double, double* %yv, align 8
  %y78 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v23, i32 0, i32 1
  store double %107, double* %y78, align 8
  %108 = load double, double* @img2pre, align 8
  %109 = load double, double* %x.addr, align 8
  %110 = load i32, i32* @xl, align 4
  %conv79 = sitofp i32 %110 to double
  %sub80 = fsub double %109, %conv79
  %111 = load double, double* %scale.addr, align 8
  %sub81 = fsub double %sub80, %111
  %mul82 = fmul double %108, %sub81
  %112 = load double, double* @img2pre, align 8
  %113 = load double, double* %y.addr, align 8
  %114 = load i32, i32* @yl, align 4
  %conv83 = sitofp i32 %114 to double
  %sub84 = fsub double %113, %conv83
  %mul85 = fmul double %112, %sub84
  call void @iwarp_get_deform_vector(double %mul82, double %mul85, double* %xv, double* %yv)
  %115 = load double, double* @animate_deform_value, align 8
  %116 = load double, double* %xv, align 8
  %mul86 = fmul double %116, %115
  store double %mul86, double* %xv, align 8
  %117 = load double, double* @animate_deform_value, align 8
  %118 = load double, double* %yv, align 8
  %mul87 = fmul double %118, %117
  store double %mul87, double* %yv, align 8
  %119 = load double, double* %xv, align 8
  %x88 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v02, i32 0, i32 0
  store double %119, double* %x88, align 8
  %120 = load double, double* %yv, align 8
  %y89 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v02, i32 0, i32 1
  store double %120, double* %y89, align 8
  %121 = load double, double* %x.addr, align 8
  %122 = load double, double* %scale.addr, align 8
  %sub90 = fsub double %121, %122
  %123 = load double, double* %y.addr, align 8
  %124 = load double, double* %scale.addr, align 8
  %sub91 = fsub double %123, %124
  %125 = load i32*, i32** %sample.addr, align 8
  %126 = load i32*, i32** %cc.addr, align 8
  %127 = load i32, i32* %depth.addr, align 4
  %add92 = add nsw i32 %127, 1
  %128 = load double, double* %scale.addr, align 8
  %129 = bitcast %struct._GimpVector2* %v0 to { double, double }*
  %130 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = load double, double* %130, align 1
  %132 = getelementptr { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = load double, double* %132, align 1
  %134 = bitcast %struct._GimpVector2* %v01 to { double, double }*
  %135 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 0
  %136 = load double, double* %135, align 1
  %137 = getelementptr { double, double }, { double, double }* %134, i32 0, i32 1
  %138 = load double, double* %137, align 1
  %139 = bitcast %struct._GimpVector2* %vm to { double, double }*
  %140 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 0
  %141 = load double, double* %140, align 1
  %142 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 1
  %143 = load double, double* %142, align 1
  %144 = bitcast %struct._GimpVector2* %v02 to { double, double }*
  %145 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 0
  %146 = load double, double* %145, align 1
  %147 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 1
  %148 = load double, double* %147, align 1
  call void @iwarp_getsample(double %131, double %133, double %136, double %138, double %141, double %143, double %146, double %148, double %sub90, double %sub91, i32* %125, i32* %126, i32 %add92, double %128)
  %149 = load double, double* %x.addr, align 8
  %150 = load double, double* %scale.addr, align 8
  %add93 = fadd double %149, %150
  %151 = load double, double* %y.addr, align 8
  %152 = load double, double* %scale.addr, align 8
  %sub94 = fsub double %151, %152
  %153 = load i32*, i32** %sample.addr, align 8
  %154 = load i32*, i32** %cc.addr, align 8
  %155 = load i32, i32* %depth.addr, align 4
  %add95 = add nsw i32 %155, 1
  %156 = load double, double* %scale.addr, align 8
  %157 = bitcast %struct._GimpVector2* %v01 to { double, double }*
  %158 = getelementptr { double, double }, { double, double }* %157, i32 0, i32 0
  %159 = load double, double* %158, align 1
  %160 = getelementptr { double, double }, { double, double }* %157, i32 0, i32 1
  %161 = load double, double* %160, align 1
  %162 = bitcast %struct._GimpVector2* %v1 to { double, double }*
  %163 = getelementptr { double, double }, { double, double }* %162, i32 0, i32 0
  %164 = load double, double* %163, align 1
  %165 = getelementptr { double, double }, { double, double }* %162, i32 0, i32 1
  %166 = load double, double* %165, align 1
  %167 = bitcast %struct._GimpVector2* %v13 to { double, double }*
  %168 = getelementptr { double, double }, { double, double }* %167, i32 0, i32 0
  %169 = load double, double* %168, align 1
  %170 = getelementptr { double, double }, { double, double }* %167, i32 0, i32 1
  %171 = load double, double* %170, align 1
  %172 = bitcast %struct._GimpVector2* %vm to { double, double }*
  %173 = getelementptr { double, double }, { double, double }* %172, i32 0, i32 0
  %174 = load double, double* %173, align 1
  %175 = getelementptr { double, double }, { double, double }* %172, i32 0, i32 1
  %176 = load double, double* %175, align 1
  call void @iwarp_getsample(double %159, double %161, double %164, double %166, double %169, double %171, double %174, double %176, double %add93, double %sub94, i32* %153, i32* %154, i32 %add95, double %156)
  %177 = load double, double* %x.addr, align 8
  %178 = load double, double* %scale.addr, align 8
  %sub96 = fsub double %177, %178
  %179 = load double, double* %y.addr, align 8
  %180 = load double, double* %scale.addr, align 8
  %add97 = fadd double %179, %180
  %181 = load i32*, i32** %sample.addr, align 8
  %182 = load i32*, i32** %cc.addr, align 8
  %183 = load i32, i32* %depth.addr, align 4
  %add98 = add nsw i32 %183, 1
  %184 = load double, double* %scale.addr, align 8
  %185 = bitcast %struct._GimpVector2* %v02 to { double, double }*
  %186 = getelementptr { double, double }, { double, double }* %185, i32 0, i32 0
  %187 = load double, double* %186, align 1
  %188 = getelementptr { double, double }, { double, double }* %185, i32 0, i32 1
  %189 = load double, double* %188, align 1
  %190 = bitcast %struct._GimpVector2* %vm to { double, double }*
  %191 = getelementptr { double, double }, { double, double }* %190, i32 0, i32 0
  %192 = load double, double* %191, align 1
  %193 = getelementptr { double, double }, { double, double }* %190, i32 0, i32 1
  %194 = load double, double* %193, align 1
  %195 = bitcast %struct._GimpVector2* %v23 to { double, double }*
  %196 = getelementptr { double, double }, { double, double }* %195, i32 0, i32 0
  %197 = load double, double* %196, align 1
  %198 = getelementptr { double, double }, { double, double }* %195, i32 0, i32 1
  %199 = load double, double* %198, align 1
  %200 = bitcast %struct._GimpVector2* %v2 to { double, double }*
  %201 = getelementptr { double, double }, { double, double }* %200, i32 0, i32 0
  %202 = load double, double* %201, align 1
  %203 = getelementptr { double, double }, { double, double }* %200, i32 0, i32 1
  %204 = load double, double* %203, align 1
  call void @iwarp_getsample(double %187, double %189, double %192, double %194, double %197, double %199, double %202, double %204, double %sub96, double %add97, i32* %181, i32* %182, i32 %add98, double %184)
  %205 = load double, double* %x.addr, align 8
  %206 = load double, double* %scale.addr, align 8
  %add99 = fadd double %205, %206
  %207 = load double, double* %y.addr, align 8
  %208 = load double, double* %scale.addr, align 8
  %add100 = fadd double %207, %208
  %209 = load i32*, i32** %sample.addr, align 8
  %210 = load i32*, i32** %cc.addr, align 8
  %211 = load i32, i32* %depth.addr, align 4
  %add101 = add nsw i32 %211, 1
  %212 = load double, double* %scale.addr, align 8
  %213 = bitcast %struct._GimpVector2* %vm to { double, double }*
  %214 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 0
  %215 = load double, double* %214, align 1
  %216 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 1
  %217 = load double, double* %216, align 1
  %218 = bitcast %struct._GimpVector2* %v13 to { double, double }*
  %219 = getelementptr { double, double }, { double, double }* %218, i32 0, i32 0
  %220 = load double, double* %219, align 1
  %221 = getelementptr { double, double }, { double, double }* %218, i32 0, i32 1
  %222 = load double, double* %221, align 1
  %223 = bitcast %struct._GimpVector2* %v3 to { double, double }*
  %224 = getelementptr { double, double }, { double, double }* %223, i32 0, i32 0
  %225 = load double, double* %224, align 1
  %226 = getelementptr { double, double }, { double, double }* %223, i32 0, i32 1
  %227 = load double, double* %226, align 1
  %228 = bitcast %struct._GimpVector2* %v23 to { double, double }*
  %229 = getelementptr { double, double }, { double, double }* %228, i32 0, i32 0
  %230 = load double, double* %229, align 1
  %231 = getelementptr { double, double }, { double, double }* %228, i32 0, i32 1
  %232 = load double, double* %231, align 1
  call void @iwarp_getsample(double %215, double %217, double %220, double %222, double %225, double %227, double %230, double %232, double %add99, double %add100, i32* %209, i32* %210, i32 %add101, double %212)
  br label %if.end

if.end:                                           ; preds = %for.end.42, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iwarp_supersample_test(%struct._GimpVector2* %v0, %struct._GimpVector2* %v1, %struct._GimpVector2* %v2, %struct._GimpVector2* %v3) #0 {
entry:
  %retval = alloca i32, align 4
  %v0.addr = alloca %struct._GimpVector2*, align 8
  %v1.addr = alloca %struct._GimpVector2*, align 8
  %v2.addr = alloca %struct._GimpVector2*, align 8
  %v3.addr = alloca %struct._GimpVector2*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpVector2* %v0, %struct._GimpVector2** %v0.addr, align 8
  store %struct._GimpVector2* %v1, %struct._GimpVector2** %v1.addr, align 8
  store %struct._GimpVector2* %v2, %struct._GimpVector2** %v2.addr, align 8
  store %struct._GimpVector2* %v3, %struct._GimpVector2** %v3.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %v1.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %add = fadd double 1.000000e+00, %1
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %v0.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %add, %3
  store double %sub, double* %dx, align 8
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %v1.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %v0.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i32 0, i32 1
  %7 = load double, double* %y2, align 8
  %sub3 = fsub double %5, %7
  store double %sub3, double* %dy, align 8
  %8 = load double, double* %dx, align 8
  %9 = load double, double* %dx, align 8
  %mul = fmul double %8, %9
  %10 = load double, double* %dy, align 8
  %11 = load double, double* %dy, align 8
  %mul4 = fmul double %10, %11
  %add5 = fadd double %mul, %mul4
  %12 = load double, double* @supersample_threshold_2, align 8
  %cmp = fcmp ogt double %add5, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._GimpVector2*, %struct._GimpVector2** %v2.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %13, i32 0, i32 0
  %14 = load double, double* %x6, align 8
  %add7 = fadd double 1.000000e+00, %14
  %15 = load %struct._GimpVector2*, %struct._GimpVector2** %v3.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %15, i32 0, i32 0
  %16 = load double, double* %x8, align 8
  %sub9 = fsub double %add7, %16
  store double %sub9, double* %dx, align 8
  %17 = load %struct._GimpVector2*, %struct._GimpVector2** %v2.addr, align 8
  %y10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %17, i32 0, i32 1
  %18 = load double, double* %y10, align 8
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %v3.addr, align 8
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i32 0, i32 1
  %20 = load double, double* %y11, align 8
  %sub12 = fsub double %18, %20
  store double %sub12, double* %dy, align 8
  %21 = load double, double* %dx, align 8
  %22 = load double, double* %dx, align 8
  %mul13 = fmul double %21, %22
  %23 = load double, double* %dy, align 8
  %24 = load double, double* %dy, align 8
  %mul14 = fmul double %23, %24
  %add15 = fadd double %mul13, %mul14
  %25 = load double, double* @supersample_threshold_2, align 8
  %cmp16 = fcmp ogt double %add15, %25
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %v2.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %26, i32 0, i32 0
  %27 = load double, double* %x19, align 8
  %28 = load %struct._GimpVector2*, %struct._GimpVector2** %v0.addr, align 8
  %x20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %28, i32 0, i32 0
  %29 = load double, double* %x20, align 8
  %sub21 = fsub double %27, %29
  store double %sub21, double* %dx, align 8
  %30 = load %struct._GimpVector2*, %struct._GimpVector2** %v2.addr, align 8
  %y22 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %30, i32 0, i32 1
  %31 = load double, double* %y22, align 8
  %add23 = fadd double 1.000000e+00, %31
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %v0.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i32 0, i32 1
  %33 = load double, double* %y24, align 8
  %sub25 = fsub double %add23, %33
  store double %sub25, double* %dy, align 8
  %34 = load double, double* %dx, align 8
  %35 = load double, double* %dx, align 8
  %mul26 = fmul double %34, %35
  %36 = load double, double* %dy, align 8
  %37 = load double, double* %dy, align 8
  %mul27 = fmul double %36, %37
  %add28 = fadd double %mul26, %mul27
  %38 = load double, double* @supersample_threshold_2, align 8
  %cmp29 = fcmp ogt double %add28, %38
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.18
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.18
  %39 = load %struct._GimpVector2*, %struct._GimpVector2** %v3.addr, align 8
  %x32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %39, i32 0, i32 0
  %40 = load double, double* %x32, align 8
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %v1.addr, align 8
  %x33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %41, i32 0, i32 0
  %42 = load double, double* %x33, align 8
  %sub34 = fsub double %40, %42
  store double %sub34, double* %dx, align 8
  %43 = load %struct._GimpVector2*, %struct._GimpVector2** %v3.addr, align 8
  %y35 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %43, i32 0, i32 1
  %44 = load double, double* %y35, align 8
  %add36 = fadd double 1.000000e+00, %44
  %45 = load %struct._GimpVector2*, %struct._GimpVector2** %v1.addr, align 8
  %y37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %45, i32 0, i32 1
  %46 = load double, double* %y37, align 8
  %sub38 = fsub double %add36, %46
  store double %sub38, double* %dy, align 8
  %47 = load double, double* %dx, align 8
  %48 = load double, double* %dx, align 8
  %mul39 = fmul double %47, %48
  %49 = load double, double* %dy, align 8
  %50 = load double, double* %dy, align 8
  %mul40 = fmul double %49, %50
  %add41 = fadd double %mul39, %mul40
  %51 = load double, double* @supersample_threshold_2, align 8
  %cmp42 = fcmp ogt double %add41, %51
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.31
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then.30, %if.then.17, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
