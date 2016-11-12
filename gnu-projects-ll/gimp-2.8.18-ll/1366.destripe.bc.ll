; ModuleID = './plug-ins/common/destripe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.DestripeValues = type { i32, i32, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"avg-width\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Averaging filter width (default = 36)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"plug-in-destripe\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Remove vertical stripe artifacts from the image\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"This plug-in tries to remove vertical stripes from an image.\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Marc Lehmann <pcg@goof.com>\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"0.2\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Des_tripe...\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@vals = internal global %struct.DestripeValues { i32 0, i32 36, i32 1 }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"destripe\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Destripe\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"gimp-destripe\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Create _histogram\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Destriping\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
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
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DestripeValues* @vals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @destripe_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %9 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %9, 4
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.14

if.else:                                          ; preds = %sw.bb.9
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %11 = load i32, i32* %d_int3213, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 1), align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end
  %call16 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DestripeValues* @vals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %if.end.14, %if.end
  %12 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %12, 3
  br i1 %cmp17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %sw.epilog
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id, align 4
  %call19 = call i32 @gimp_drawable_is_rgb(i32 %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.18
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id21, align 4
  %call22 = call i32 @gimp_drawable_is_gray(i32 %16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.37

if.then.24:                                       ; preds = %lor.lhs.false, %if.then.18
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width, align 4
  %call25 = call i32 @gimp_tile_width() #5
  %add = add i32 %18, %call25
  %sub = sub i32 %add, 1
  %call26 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %sub, %call26
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @destripe(%struct._GimpDrawable* %19, %struct._GimpPreview* null)
  %20 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %20, 1
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.24
  %call30 = call i32 @gimp_displays_flush()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.24
  %21 = load i32, i32* %run_mode, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %call35 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DestripeValues* @vals to i8*), i32 12)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %sw.epilog
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %if.end.39, %if.then
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
define internal i32 @destripe_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @destripe to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #4
  %37 = load i32, i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 1), align 4
  %conv = sitofp i32 %37 to double
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %36, i32 0, i32 1, i8* %call25, i32 140, i32 0, double %conv, double 2.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  %38 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %39 = bitcast %struct._GtkObject* %38 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %41 = bitcast %struct._GtkObject* %40 to i8*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 2)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %button, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_toggle_button_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkToggleButton*
  %51 = load i32, i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 0), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %50, i32 %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (%struct.DestripeValues* @vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 2)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dialog_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call37)
  %62 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDialog*
  %call39 = call i32 @gimp_dialog_run(%struct._GimpDialog* %62)
  %cmp = icmp eq i32 %call39, -5
  %conv40 = zext i1 %cmp to i32
  store i32 %conv40, i32* %run, align 4
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %63)
  %64 = load i32, i32* %run, align 4
  ret i32 %64
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @destripe(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dst_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rows = alloca i8*, align 8
  %progress = alloca double, align 8
  %progress_inc = alloca double, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %hist = alloca i64*, align 8
  %corr = alloca i64*, align 8
  %tile_width = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ox = alloca i32, align 4
  %cols = alloca i32, align 4
  %rows = alloca i8*, align 8
  %h = alloca i64*, align 8
  %row_end = alloca i8*, align 8
  %extend = alloca i32, align 4
  %h60 = alloca i64*, align 8
  %c = alloca i64*, align 8
  %sum = alloca i64, align 8
  %cnt = alloca i32, align 4
  %rows119 = alloca i8*, align 8
  %c134 = alloca i64*, align 8
  %row_end139 = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call i32 @gimp_tile_width() #5
  store i32 %call, i32* %tile_width, align 4
  store double 0.000000e+00, double* %progress, align 8
  store double 0.000000e+00, double* %progress_inc, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call1, i32* %bpp, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x1, i32* %y1)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)) #4
  %call3 = call i32 @gimp_progress_init(i8* %call2)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_mask_intersect(i32 %6, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  store double 0.000000e+00, double* %progress, align 8
  %7 = load i32, i32* %tile_width, align 4
  %conv = sitofp i32 %7 to double
  %mul = fmul double 5.000000e-01, %conv
  %8 = load i32, i32* %width, align 4
  %conv8 = sitofp i32 %8 to double
  %div = fdiv double %mul, %conv8
  store double %div, double* %progress_inc, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %width, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* %x2, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %y1, align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 0, i32 0)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = load i32, i32* %x1, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %21, null
  %conv10 = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_rgn, %struct._GimpDrawable* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %conv10, i32 1)
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %bpp, align 4
  %mul11 = mul nsw i32 %22, %23
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 8)
  %24 = bitcast i8* %call13 to i64*
  store i64* %24, i64** %hist, align 8
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %bpp, align 4
  %mul14 = mul nsw i32 %25, %26
  %conv15 = sext i32 %mul14 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %27 = bitcast i8* %call16 to i64*
  store i64* %27, i64** %corr, align 8
  %28 = load i32, i32* %tile_width, align 4
  %29 = load i32, i32* %height, align 4
  %mul17 = mul nsw i32 %28, %29
  %30 = load i32, i32* %bpp, align 4
  %mul18 = mul nsw i32 %mul17, %30
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %src_rows, align 8
  %31 = load i64*, i64** %hist, align 8
  %32 = bitcast i64* %31 to i8*
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %bpp, align 4
  %mul21 = mul nsw i32 %33, %34
  %conv22 = sext i32 %mul21 to i64
  %mul23 = mul i64 %conv22, 8
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %mul23, i32 8, i1 false)
  %35 = load i32, i32* %x1, align 4
  store i32 %35, i32* %ox, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.end.9
  %36 = load i32, i32* %ox, align 4
  %37 = load i32, i32* %x2, align 4
  %cmp24 = icmp slt i32 %36, %37
  br i1 %cmp24, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %38 = load i8*, i8** %src_rows, align 8
  store i8* %38, i8** %rows, align 8
  %39 = load i32, i32* %x2, align 4
  %40 = load i32, i32* %ox, align 4
  %sub = sub nsw i32 %39, %40
  store i32 %sub, i32* %cols, align 4
  %41 = load i32, i32* %cols, align 4
  %42 = load i32, i32* %tile_width, align 4
  %cmp26 = icmp sgt i32 %41, %42
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %43 = load i32, i32* %tile_width, align 4
  store i32 %43, i32* %cols, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %for.body
  %44 = load i8*, i8** %rows, align 8
  %45 = load i32, i32* %ox, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %cols, align 4
  %48 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %y, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.end.29
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %height, align 4
  %cmp31 = icmp slt i32 %49, %50
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %51 = load i64*, i64** %hist, align 8
  %52 = load i32, i32* %ox, align 4
  %53 = load i32, i32* %x1, align 4
  %sub34 = sub nsw i32 %52, %53
  %54 = load i32, i32* %bpp, align 4
  %mul35 = mul nsw i32 %sub34, %54
  %idx.ext = sext i32 %mul35 to i64
  %add.ptr = getelementptr inbounds i64, i64* %51, i64 %idx.ext
  store i64* %add.ptr, i64** %h, align 8
  %55 = load i8*, i8** %rows, align 8
  %56 = load i32, i32* %cols, align 4
  %57 = load i32, i32* %bpp, align 4
  %mul36 = mul nsw i32 %56, %57
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %55, i64 %idx.ext37
  store i8* %add.ptr38, i8** %row_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.33
  %58 = load i8*, i8** %rows, align 8
  %59 = load i8*, i8** %row_end, align 8
  %cmp39 = icmp ult i8* %58, %59
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load i8*, i8** %rows, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %rows, align 8
  %61 = load i8, i8* %60, align 1
  %conv41 = zext i8 %61 to i64
  %62 = load i64*, i64** %h, align 8
  %incdec.ptr42 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %incdec.ptr42, i64** %h, align 8
  %63 = load i64, i64* %62, align 8
  %add43 = add nsw i64 %63, %conv41
  store i64 %add43, i64* %62, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %64 = load i32, i32* %y, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %65 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool44 = icmp ne %struct._GimpPreview* %65, null
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %for.end
  %66 = load double, double* %progress_inc, align 8
  %67 = load double, double* %progress, align 8
  %add46 = fadd double %67, %66
  store double %add46, double* %progress, align 8
  %call47 = call i32 @gimp_progress_update(double %add46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %for.end
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %68 = load i32, i32* %tile_width, align 4
  %69 = load i32, i32* %ox, align 4
  %add50 = add nsw i32 %69, %68
  store i32 %add50, i32* %ox, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %70 = load i32, i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 1), align 4
  %div52 = sdiv i32 %70, 2
  %71 = load i32, i32* %bpp, align 4
  %mul53 = mul nsw i32 %div52, %71
  store i32 %mul53, i32* %extend, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.112, %for.end.51
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %bpp, align 4
  %cmp55 = icmp slt i32 3, %73
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.54
  br label %cond.end

cond.false:                                       ; preds = %for.cond.54
  %74 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %74, %cond.false ]
  %cmp57 = icmp slt i32 %72, %cond
  br i1 %cmp57, label %for.body.59, label %for.end.114

for.body.59:                                      ; preds = %cond.end
  %75 = load i64*, i64** %hist, align 8
  %76 = load i32, i32* %extend, align 4
  %idx.ext61 = sext i32 %76 to i64
  %idx.neg = sub i64 0, %idx.ext61
  %add.ptr62 = getelementptr inbounds i64, i64* %75, i64 %idx.neg
  %77 = load i32, i32* %i, align 4
  %idx.ext63 = sext i32 %77 to i64
  %add.ptr64 = getelementptr inbounds i64, i64* %add.ptr62, i64 %idx.ext63
  store i64* %add.ptr64, i64** %h60, align 8
  %78 = load i64*, i64** %corr, align 8
  %79 = load i32, i32* %extend, align 4
  %idx.ext65 = sext i32 %79 to i64
  %idx.neg66 = sub i64 0, %idx.ext65
  %add.ptr67 = getelementptr inbounds i64, i64* %78, i64 %idx.neg66
  %80 = load i32, i32* %i, align 4
  %idx.ext68 = sext i32 %80 to i64
  %add.ptr69 = getelementptr inbounds i64, i64* %add.ptr67, i64 %idx.ext68
  store i64* %add.ptr69, i64** %c, align 8
  store i64 0, i64* %sum, align 8
  store i32 0, i32* %cnt, align 4
  %81 = load i32, i32* %extend, align 4
  %sub70 = sub nsw i32 0, %81
  store i32 %sub70, i32* %x, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.109, %for.body.59
  %82 = load i32, i32* %x, align 4
  %83 = load i32, i32* %width, align 4
  %84 = load i32, i32* %bpp, align 4
  %mul72 = mul nsw i32 %83, %84
  %cmp73 = icmp slt i32 %82, %mul72
  br i1 %cmp73, label %for.body.75, label %for.end.111

for.body.75:                                      ; preds = %for.cond.71
  %85 = load i32, i32* %x, align 4
  %86 = load i32, i32* %extend, align 4
  %add76 = add nsw i32 %85, %86
  %87 = load i32, i32* %width, align 4
  %88 = load i32, i32* %bpp, align 4
  %mul77 = mul nsw i32 %87, %88
  %cmp78 = icmp slt i32 %add76, %mul77
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %for.body.75
  %89 = load i32, i32* %extend, align 4
  %idxprom = sext i32 %89 to i64
  %90 = load i64*, i64** %h60, align 8
  %arrayidx = getelementptr inbounds i64, i64* %90, i64 %idxprom
  %91 = load i64, i64* %arrayidx, align 8
  %92 = load i64, i64* %sum, align 8
  %add81 = add nsw i64 %92, %91
  store i64 %add81, i64* %sum, align 8
  %93 = load i32, i32* %cnt, align 4
  %inc82 = add nsw i32 %93, 1
  store i32 %inc82, i32* %cnt, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %for.body.75
  %94 = load i32, i32* %x, align 4
  %95 = load i32, i32* %extend, align 4
  %sub84 = sub nsw i32 %94, %95
  %cmp85 = icmp sge i32 %sub84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %if.end.83
  %96 = load i32, i32* %extend, align 4
  %sub88 = sub nsw i32 0, %96
  %idxprom89 = sext i32 %sub88 to i64
  %97 = load i64*, i64** %h60, align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %97, i64 %idxprom89
  %98 = load i64, i64* %arrayidx90, align 8
  %99 = load i64, i64* %sum, align 8
  %sub91 = sub nsw i64 %99, %98
  store i64 %sub91, i64* %sum, align 8
  %100 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %cnt, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %if.end.83
  %101 = load i32, i32* %x, align 4
  %cmp93 = icmp sge i32 %101, 0
  br i1 %cmp93, label %if.then.95, label %if.end.104

if.then.95:                                       ; preds = %if.end.92
  %102 = load i64*, i64** %h60, align 8
  %103 = load i64, i64* %102, align 8
  %tobool96 = icmp ne i64 %103, 0
  br i1 %tobool96, label %if.then.97, label %if.else.102

if.then.97:                                       ; preds = %if.then.95
  %104 = load i64, i64* %sum, align 8
  %105 = load i32, i32* %cnt, align 4
  %conv98 = sext i32 %105 to i64
  %div99 = sdiv i64 %104, %conv98
  %106 = load i64*, i64** %h60, align 8
  %107 = load i64, i64* %106, align 8
  %sub100 = sub nsw i64 %div99, %107
  %shl = shl i64 %sub100, 10
  %108 = load i64*, i64** %h60, align 8
  %109 = load i64, i64* %108, align 8
  %div101 = sdiv i64 %shl, %109
  %110 = load i64*, i64** %c, align 8
  store i64 %div101, i64* %110, align 8
  br label %if.end.103

if.else.102:                                      ; preds = %if.then.95
  %111 = load i64*, i64** %c, align 8
  store i64 2147483647, i64* %111, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.97
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.92
  %112 = load i32, i32* %bpp, align 4
  %113 = load i64*, i64** %h60, align 8
  %idx.ext105 = sext i32 %112 to i64
  %add.ptr106 = getelementptr inbounds i64, i64* %113, i64 %idx.ext105
  store i64* %add.ptr106, i64** %h60, align 8
  %114 = load i32, i32* %bpp, align 4
  %115 = load i64*, i64** %c, align 8
  %idx.ext107 = sext i32 %114 to i64
  %add.ptr108 = getelementptr inbounds i64, i64* %115, i64 %idx.ext107
  store i64* %add.ptr108, i64** %c, align 8
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.104
  %116 = load i32, i32* %bpp, align 4
  %117 = load i32, i32* %x, align 4
  %add110 = add nsw i32 %117, %116
  store i32 %add110, i32* %x, align 4
  br label %for.cond.71

for.end.111:                                      ; preds = %for.cond.71
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.end.111
  %118 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %118, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.54

for.end.114:                                      ; preds = %cond.end
  %119 = load i32, i32* %x1, align 4
  store i32 %119, i32* %ox, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.242, %for.end.114
  %120 = load i32, i32* %ox, align 4
  %121 = load i32, i32* %x2, align 4
  %cmp116 = icmp slt i32 %120, %121
  br i1 %cmp116, label %for.body.118, label %for.end.244

for.body.118:                                     ; preds = %for.cond.115
  %122 = load i8*, i8** %src_rows, align 8
  store i8* %122, i8** %rows119, align 8
  %123 = load i32, i32* %x2, align 4
  %124 = load i32, i32* %ox, align 4
  %sub120 = sub nsw i32 %123, %124
  store i32 %sub120, i32* %cols, align 4
  %125 = load i32, i32* %cols, align 4
  %126 = load i32, i32* %tile_width, align 4
  %cmp121 = icmp sgt i32 %125, %126
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.118
  %127 = load i32, i32* %tile_width, align 4
  store i32 %127, i32* %cols, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %for.body.118
  %128 = load i8*, i8** %rows119, align 8
  %129 = load i32, i32* %ox, align 4
  %130 = load i32, i32* %y1, align 4
  %131 = load i32, i32* %cols, align 4
  %132 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  %133 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool125 = icmp ne %struct._GimpPreview* %133, null
  br i1 %tobool125, label %if.end.129, label %if.then.126

if.then.126:                                      ; preds = %if.end.124
  %134 = load double, double* %progress_inc, align 8
  %135 = load double, double* %progress, align 8
  %add127 = fadd double %135, %134
  store double %add127, double* %progress, align 8
  %call128 = call i32 @gimp_progress_update(double %add127)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.124
  store i32 0, i32* %y, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.234, %if.end.129
  %136 = load i32, i32* %y, align 4
  %137 = load i32, i32* %height, align 4
  %cmp131 = icmp slt i32 %136, %137
  br i1 %cmp131, label %for.body.133, label %for.end.236

for.body.133:                                     ; preds = %for.cond.130
  %138 = load i64*, i64** %corr, align 8
  %139 = load i32, i32* %ox, align 4
  %140 = load i32, i32* %x1, align 4
  %sub135 = sub nsw i32 %139, %140
  %141 = load i32, i32* %bpp, align 4
  %mul136 = mul nsw i32 %sub135, %141
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds i64, i64* %138, i64 %idx.ext137
  store i64* %add.ptr138, i64** %c134, align 8
  %142 = load i8*, i8** %rows119, align 8
  %143 = load i32, i32* %cols, align 4
  %144 = load i32, i32* %bpp, align 4
  %mul140 = mul nsw i32 %143, %144
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %142, i64 %idx.ext141
  store i8* %add.ptr142, i8** %row_end139, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.DestripeValues, %struct.DestripeValues* @vals, i32 0, i32 0), align 4
  %tobool143 = icmp ne i32 %145, 0
  br i1 %tobool143, label %if.then.144, label %if.else.186

if.then.144:                                      ; preds = %for.body.133
  br label %while.cond.145

while.cond.145:                                   ; preds = %cond.end.180, %if.then.144
  %146 = load i8*, i8** %rows119, align 8
  %147 = load i8*, i8** %row_end139, align 8
  %cmp146 = icmp ult i8* %146, %147
  br i1 %cmp146, label %while.body.148, label %while.end.185

while.body.148:                                   ; preds = %while.cond.145
  %148 = load i8*, i8** %rows119, align 8
  %149 = load i8, i8* %148, align 1
  %conv149 = zext i8 %149 to i64
  %150 = load i64*, i64** %c134, align 8
  %151 = load i64, i64* %150, align 8
  %mul150 = mul nsw i64 %conv149, %151
  %shr = ashr i64 %mul150, 10
  %add151 = add nsw i64 128, %shr
  %cmp152 = icmp sgt i64 0, %add151
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %while.body.148
  br label %cond.end.160

cond.false.155:                                   ; preds = %while.body.148
  %152 = load i8*, i8** %rows119, align 8
  %153 = load i8, i8* %152, align 1
  %conv156 = zext i8 %153 to i64
  %154 = load i64*, i64** %c134, align 8
  %155 = load i64, i64* %154, align 8
  %mul157 = mul nsw i64 %conv156, %155
  %shr158 = ashr i64 %mul157, 10
  %add159 = add nsw i64 128, %shr158
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.155, %cond.true.154
  %cond161 = phi i64 [ 0, %cond.true.154 ], [ %add159, %cond.false.155 ]
  %cmp162 = icmp slt i64 255, %cond161
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.end.160
  br label %cond.end.180

cond.false.165:                                   ; preds = %cond.end.160
  %156 = load i8*, i8** %rows119, align 8
  %157 = load i8, i8* %156, align 1
  %conv166 = zext i8 %157 to i64
  %158 = load i64*, i64** %c134, align 8
  %159 = load i64, i64* %158, align 8
  %mul167 = mul nsw i64 %conv166, %159
  %shr168 = ashr i64 %mul167, 10
  %add169 = add nsw i64 128, %shr168
  %cmp170 = icmp sgt i64 0, %add169
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.false.165
  br label %cond.end.178

cond.false.173:                                   ; preds = %cond.false.165
  %160 = load i8*, i8** %rows119, align 8
  %161 = load i8, i8* %160, align 1
  %conv174 = zext i8 %161 to i64
  %162 = load i64*, i64** %c134, align 8
  %163 = load i64, i64* %162, align 8
  %mul175 = mul nsw i64 %conv174, %163
  %shr176 = ashr i64 %mul175, 10
  %add177 = add nsw i64 128, %shr176
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.173, %cond.true.172
  %cond179 = phi i64 [ 0, %cond.true.172 ], [ %add177, %cond.false.173 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end.178, %cond.true.164
  %cond181 = phi i64 [ 255, %cond.true.164 ], [ %cond179, %cond.end.178 ]
  %conv182 = trunc i64 %cond181 to i8
  %164 = load i8*, i8** %rows119, align 8
  store i8 %conv182, i8* %164, align 1
  %165 = load i64*, i64** %c134, align 8
  %incdec.ptr183 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %incdec.ptr183, i64** %c134, align 8
  %166 = load i8*, i8** %rows119, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr184, i8** %rows119, align 8
  br label %while.cond.145

while.end.185:                                    ; preds = %while.cond.145
  br label %if.end.233

if.else.186:                                      ; preds = %for.body.133
  br label %while.cond.187

while.cond.187:                                   ; preds = %cond.end.227, %if.else.186
  %167 = load i8*, i8** %rows119, align 8
  %168 = load i8*, i8** %row_end139, align 8
  %cmp188 = icmp ult i8* %167, %168
  br i1 %cmp188, label %while.body.190, label %while.end.232

while.body.190:                                   ; preds = %while.cond.187
  %169 = load i8*, i8** %rows119, align 8
  %170 = load i8, i8* %169, align 1
  %conv191 = zext i8 %170 to i64
  %171 = load i8*, i8** %rows119, align 8
  %172 = load i8, i8* %171, align 1
  %conv192 = zext i8 %172 to i64
  %173 = load i64*, i64** %c134, align 8
  %174 = load i64, i64* %173, align 8
  %mul193 = mul nsw i64 %conv192, %174
  %shr194 = ashr i64 %mul193, 10
  %add195 = add nsw i64 %conv191, %shr194
  %cmp196 = icmp sgt i64 0, %add195
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %while.body.190
  br label %cond.end.205

cond.false.199:                                   ; preds = %while.body.190
  %175 = load i8*, i8** %rows119, align 8
  %176 = load i8, i8* %175, align 1
  %conv200 = zext i8 %176 to i64
  %177 = load i8*, i8** %rows119, align 8
  %178 = load i8, i8* %177, align 1
  %conv201 = zext i8 %178 to i64
  %179 = load i64*, i64** %c134, align 8
  %180 = load i64, i64* %179, align 8
  %mul202 = mul nsw i64 %conv201, %180
  %shr203 = ashr i64 %mul202, 10
  %add204 = add nsw i64 %conv200, %shr203
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.199, %cond.true.198
  %cond206 = phi i64 [ 0, %cond.true.198 ], [ %add204, %cond.false.199 ]
  %cmp207 = icmp slt i64 255, %cond206
  br i1 %cmp207, label %cond.true.209, label %cond.false.210

cond.true.209:                                    ; preds = %cond.end.205
  br label %cond.end.227

cond.false.210:                                   ; preds = %cond.end.205
  %181 = load i8*, i8** %rows119, align 8
  %182 = load i8, i8* %181, align 1
  %conv211 = zext i8 %182 to i64
  %183 = load i8*, i8** %rows119, align 8
  %184 = load i8, i8* %183, align 1
  %conv212 = zext i8 %184 to i64
  %185 = load i64*, i64** %c134, align 8
  %186 = load i64, i64* %185, align 8
  %mul213 = mul nsw i64 %conv212, %186
  %shr214 = ashr i64 %mul213, 10
  %add215 = add nsw i64 %conv211, %shr214
  %cmp216 = icmp sgt i64 0, %add215
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %cond.false.210
  br label %cond.end.225

cond.false.219:                                   ; preds = %cond.false.210
  %187 = load i8*, i8** %rows119, align 8
  %188 = load i8, i8* %187, align 1
  %conv220 = zext i8 %188 to i64
  %189 = load i8*, i8** %rows119, align 8
  %190 = load i8, i8* %189, align 1
  %conv221 = zext i8 %190 to i64
  %191 = load i64*, i64** %c134, align 8
  %192 = load i64, i64* %191, align 8
  %mul222 = mul nsw i64 %conv221, %192
  %shr223 = ashr i64 %mul222, 10
  %add224 = add nsw i64 %conv220, %shr223
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.219, %cond.true.218
  %cond226 = phi i64 [ 0, %cond.true.218 ], [ %add224, %cond.false.219 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.true.209
  %cond228 = phi i64 [ 255, %cond.true.209 ], [ %cond226, %cond.end.225 ]
  %conv229 = trunc i64 %cond228 to i8
  %193 = load i8*, i8** %rows119, align 8
  store i8 %conv229, i8* %193, align 1
  %194 = load i64*, i64** %c134, align 8
  %incdec.ptr230 = getelementptr inbounds i64, i64* %194, i32 1
  store i64* %incdec.ptr230, i64** %c134, align 8
  %195 = load i8*, i8** %rows119, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr231, i8** %rows119, align 8
  br label %while.cond.187

while.end.232:                                    ; preds = %while.cond.187
  br label %if.end.233

if.end.233:                                       ; preds = %while.end.232, %while.end.185
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %196 = load i32, i32* %y, align 4
  %inc235 = add nsw i32 %196, 1
  store i32 %inc235, i32* %y, align 4
  br label %for.cond.130

for.end.236:                                      ; preds = %for.cond.130
  %197 = load i8*, i8** %src_rows, align 8
  %198 = load i32, i32* %ox, align 4
  %199 = load i32, i32* %y1, align 4
  %200 = load i32, i32* %cols, align 4
  %201 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_rgn, i8* %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %202 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool237 = icmp ne %struct._GimpPreview* %202, null
  br i1 %tobool237, label %if.end.241, label %if.then.238

if.then.238:                                      ; preds = %for.end.236
  %203 = load double, double* %progress_inc, align 8
  %204 = load double, double* %progress, align 8
  %add239 = fadd double %204, %203
  store double %add239, double* %progress, align 8
  %call240 = call i32 @gimp_progress_update(double %add239)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.238, %for.end.236
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %205 = load i32, i32* %tile_width, align 4
  %206 = load i32, i32* %ox, align 4
  %add243 = add nsw i32 %206, %205
  store i32 %add243, i32* %ox, align 4
  br label %for.cond.115

for.end.244:                                      ; preds = %for.cond.115
  %207 = load i8*, i8** %src_rows, align 8
  call void @g_free(i8* %207)
  %208 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool245 = icmp ne %struct._GimpPreview* %208, null
  br i1 %tobool245, label %if.then.246, label %if.else.249

if.then.246:                                      ; preds = %for.end.244
  %209 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %210 = bitcast %struct._GimpPreview* %209 to %struct._GTypeInstance*
  %call247 = call i64 @gimp_drawable_preview_get_type() #5
  %call248 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call247)
  %211 = bitcast %struct._GTypeInstance* %call248 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %211, %struct._GimpPixelRgn* %dst_rgn)
  br label %if.end.255

if.else.249:                                      ; preds = %for.end.244
  %call250 = call i32 @gimp_progress_update(double 1.000000e+00)
  %212 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %212)
  %213 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id251 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %213, i32 0, i32 0
  %214 = load i32, i32* %drawable_id251, align 4
  %call252 = call i32 @gimp_drawable_merge_shadow(i32 %214, i32 1)
  %215 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id253 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %215, i32 0, i32 0
  %216 = load i32, i32* %drawable_id253, align 4
  %217 = load i32, i32* %x1, align 4
  %218 = load i32, i32* %y1, align 4
  %219 = load i32, i32* %width, align 4
  %220 = load i32, i32* %height, align 4
  %call254 = call i32 @gimp_drawable_update(i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.249, %if.then.246
  %221 = load i64*, i64** %hist, align 8
  %222 = bitcast i64* %221 to i8*
  call void @g_free(i8* %222)
  %223 = load i64*, i64** %corr, align 8
  %224 = bitcast i64* %223 to i8*
  call void @g_free(i8* %224)
  br label %return

return:                                           ; preds = %if.end.255, %if.then.7
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

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
