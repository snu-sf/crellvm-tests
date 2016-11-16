; ModuleID = './plug-ins/common/deinterlace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.DeinterlaceValues = type { i32 }
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
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"evenodd\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Which lines to keep { KEEP-ODD (0), KEEP-EVEN (1) }\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"plug-in-deinterlace\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Fix images where every other row is missing\00", align 1
@.str.10 = private unnamed_addr constant [201 x i8] c"Deinterlace is useful for processing images from video capture cards. When only the odd or even fields get captured, deinterlace can be used to interpolate between the existing fields to correct this.\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Andrew Kieschnick\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"_Deinterlace...\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@devals = internal global %struct.DeinterlaceValues { i32 1 }, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"Deinterlace\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"gimp-deinterlace\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Keep o_dd fields\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Keep _even fields\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load i32, i32* %run_mode, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DeinterlaceValues* @devals to i8*))
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @deinterlace_dialog(%struct._GimpDrawable* %5)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %6, 4
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %7 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %7, 3
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %9 = load i32, i32* %d_int3216, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.DeinterlaceValues, %struct.DeinterlaceValues* @devals, i32 0, i32 0), align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DeinterlaceValues* @devals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %if.end.17, %if.end
  %10 = load i32, i32* %status, align 4
  %cmp20 = icmp eq i32 %10, 3
  br i1 %cmp20, label %if.then.21, label %if.end.42

if.then.21:                                       ; preds = %sw.epilog
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call22 = call i32 @gimp_drawable_is_rgb(i32 %12)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.21
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id24, align 4
  %call25 = call i32 @gimp_drawable_is_gray(i32 %14)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.21
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0)) #5
  %call29 = call i32 @gimp_progress_init(i8* %call28)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width, align 4
  %call30 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %16, %call30
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @deinterlace(%struct._GimpDrawable* %17, %struct._GimpPreview* null)
  %18 = load i32, i32* %run_mode, align 4
  %cmp31 = icmp ne i32 %18, 1
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.27
  %call34 = call i32 @gimp_displays_flush()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.27
  %19 = load i32, i32* %run_mode, align 4
  %cmp36 = icmp eq i32 %19, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %call39 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.DeinterlaceValues* @devals to i8*), i32 4)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.41

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %sw.epilog
  %20 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %20, align 4
  %21 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %21, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %23)
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
define internal i32 @deinterlace_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %odd = alloca %struct._GtkWidget*, align 8
  %even = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @deinterlace to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load i32, i32* getelementptr inbounds (%struct.DeinterlaceValues, %struct.DeinterlaceValues* @devals, i32 0, i32 0), align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #5
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #5
  %call20 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.DeinterlaceValues* @devals to i8*), i32 %26, i8* %call18, i32 0, %struct._GtkWidget** %odd, i8* %call19, i32 1, %struct._GtkWidget** %even, i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %odd, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 2)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %even, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 2)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call23)
  %37 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_dialog_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call25)
  %43 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDialog*
  %call27 = call i32 @gimp_dialog_run(%struct._GimpDialog* %43)
  %cmp = icmp eq i32 %call27, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %44)
  %45 = load i32, i32* %run, align 4
  ret i32 %45
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @deinterlace(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %has_alpha = alloca i32, align 4
  %dest = alloca i8*, align 8
  %dest_buffer = alloca i8*, align 8
  %upper = alloca i8*, align 8
  %lower = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %upix = alloca i8*, align 8
  %lpix = alloca i8*, align 8
  %dpix = alloca i8*, align 8
  %ualpha = alloca i32, align 4
  %lalpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %dest_buffer, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %3, i32* %x, i32* %y)
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %4, i32* %width, i32* %height)
  %5 = load i32, i32* %width, align 4
  %6 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, i32* %bytes, align 4
  %mul1 = mul nsw i32 %mul, %7
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %dest_buffer, align 8
  %8 = load i8*, i8** %dest_buffer, align 8
  store i8* %8, i8** %dest, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %10, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %bytes, align 4
  %mul5 = mul nsw i32 %11, %12
  %conv6 = sext i32 %mul5 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv6, i64 1)
  store i8* %call7, i8** %dest, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 1, i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %20, 1
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %21 = load i32, i32* %y, align 4
  %sub10 = sub nsw i32 %21, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ 0, %cond.false ]
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %add = add nsw i32 %23, 1
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 2
  %25 = load i32, i32* %height11, align 4
  %cmp12 = icmp ult i32 %add, %25
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end
  %26 = load i32, i32* %height, align 4
  %add15 = add nsw i32 %26, 1
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.end
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 2
  %28 = load i32, i32* %height17, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.14
  %cond19 = phi i32 [ %add15, %cond.true.14 ], [ %28, %cond.false.16 ]
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %18, i32 %19, i32 %cond, i32 %22, i32 %cond19, i32 0, i32 0)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id20, align 4
  %call21 = call i32 @gimp_drawable_has_alpha(i32 %30)
  store i32 %call21, i32* %has_alpha, align 4
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %bytes, align 4
  %mul22 = mul nsw i32 %31, %32
  %conv23 = sext i32 %mul22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 1)
  store i8* %call24, i8** %upper, align 8
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %bytes, align 4
  %mul25 = mul nsw i32 %33, %34
  %conv26 = sext i32 %mul25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 1)
  store i8* %call27, i8** %lower, align 8
  %35 = load i32, i32* %y, align 4
  store i32 %35, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.132, %cond.end.18
  %36 = load i32, i32* %row, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %height, align 4
  %add28 = add nsw i32 %37, %38
  %cmp29 = icmp slt i32 %36, %add28
  br i1 %cmp29, label %for.body, label %for.end.134

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %dest, align 8
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %row, align 4
  %42 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %39, i32 %40, i32 %41, i32 %42)
  %43 = load i32, i32* %row, align 4
  %rem = srem i32 %43, 2
  %44 = load i32, i32* getelementptr inbounds (%struct.DeinterlaceValues, %struct.DeinterlaceValues* @devals, i32 0, i32 0), align 4
  %cmp31 = icmp ne i32 %rem, %44
  br i1 %cmp31, label %if.then.33, label %if.end.115

if.then.33:                                       ; preds = %for.body
  %45 = load i32, i32* %row, align 4
  %cmp34 = icmp sgt i32 %45, 0
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.then.33
  %46 = load i8*, i8** %upper, align 8
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %row, align 4
  %sub37 = sub nsw i32 %48, 1
  %49 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %46, i32 %47, i32 %sub37, i32 %49)
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.33
  %50 = load i8*, i8** %upper, align 8
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.DeinterlaceValues, %struct.DeinterlaceValues* @devals, i32 0, i32 0), align 4
  %53 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %50, i32 %51, i32 %52, i32 %53)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.36
  %54 = load i32, i32* %row, align 4
  %add40 = add nsw i32 %54, 1
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height41 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 2
  %56 = load i32, i32* %height41, align 4
  %cmp42 = icmp ult i32 %add40, %56
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.39
  %57 = load i8*, i8** %lower, align 8
  %58 = load i32, i32* %x, align 4
  %59 = load i32, i32* %row, align 4
  %add45 = add nsw i32 %59, 1
  %60 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %57, i32 %58, i32 %add45, i32 %60)
  br label %if.end.49

if.else.46:                                       ; preds = %if.end.39
  %61 = load i8*, i8** %lower, align 8
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %row, align 4
  %sub47 = sub nsw i32 %63, 1
  %64 = load i32, i32* getelementptr inbounds (%struct.DeinterlaceValues, %struct.DeinterlaceValues* @devals, i32 0, i32 0), align 4
  %add48 = add nsw i32 %sub47, %64
  %65 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %61, i32 %62, i32 %add48, i32 %65)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.44
  %66 = load i32, i32* %has_alpha, align 4
  %tobool50 = icmp ne i32 %66, 0
  br i1 %tobool50, label %if.then.51, label %if.else.94

if.then.51:                                       ; preds = %if.end.49
  %67 = load i8*, i8** %upper, align 8
  store i8* %67, i8** %upix, align 8
  %68 = load i8*, i8** %lower, align 8
  store i8* %68, i8** %lpix, align 8
  %69 = load i8*, i8** %dest, align 8
  store i8* %69, i8** %dpix, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.91, %if.then.51
  %70 = load i32, i32* %col, align 4
  %71 = load i32, i32* %width, align 4
  %cmp53 = icmp slt i32 %70, %71
  br i1 %cmp53, label %for.body.55, label %for.end.93

for.body.55:                                      ; preds = %for.cond.52
  %72 = load i32, i32* %bytes, align 4
  %sub56 = sub nsw i32 %72, 1
  %idxprom = sext i32 %sub56 to i64
  %73 = load i8*, i8** %upix, align 8
  %arrayidx = getelementptr inbounds i8, i8* %73, i64 %idxprom
  %74 = load i8, i8* %arrayidx, align 1
  %conv57 = zext i8 %74 to i32
  store i32 %conv57, i32* %ualpha, align 4
  %75 = load i32, i32* %bytes, align 4
  %sub58 = sub nsw i32 %75, 1
  %idxprom59 = sext i32 %sub58 to i64
  %76 = load i8*, i8** %lpix, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %76, i64 %idxprom59
  %77 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %77 to i32
  store i32 %conv61, i32* %lalpha, align 4
  %78 = load i32, i32* %ualpha, align 4
  %79 = load i32, i32* %lalpha, align 4
  %add62 = add i32 %78, %79
  store i32 %add62, i32* %alpha, align 4
  %80 = load i32, i32* %alpha, align 4
  %shr = lshr i32 %80, 1
  %conv63 = trunc i32 %shr to i8
  %81 = load i32, i32* %bytes, align 4
  %sub64 = sub nsw i32 %81, 1
  %idxprom65 = sext i32 %sub64 to i64
  %82 = load i8*, i8** %dpix, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %82, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx66, align 1
  %tobool67 = icmp ne i8 %conv63, 0
  br i1 %tobool67, label %if.then.68, label %if.end.86

if.then.68:                                       ; preds = %for.body.55
  store i32 0, i32* %b, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.then.68
  %83 = load i32, i32* %b, align 4
  %84 = load i32, i32* %bytes, align 4
  %sub70 = sub nsw i32 %84, 1
  %cmp71 = icmp slt i32 %83, %sub70
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.69
  %85 = load i32, i32* %b, align 4
  %idxprom74 = sext i32 %85 to i64
  %86 = load i8*, i8** %upix, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %86, i64 %idxprom74
  %87 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %87 to i32
  %88 = load i32, i32* %ualpha, align 4
  %mul77 = mul i32 %conv76, %88
  %89 = load i32, i32* %b, align 4
  %idxprom78 = sext i32 %89 to i64
  %90 = load i8*, i8** %lpix, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %90, i64 %idxprom78
  %91 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %91 to i32
  %92 = load i32, i32* %lalpha, align 4
  %mul81 = mul i32 %conv80, %92
  %add82 = add i32 %mul77, %mul81
  %93 = load i32, i32* %alpha, align 4
  %div = udiv i32 %add82, %93
  %conv83 = trunc i32 %div to i8
  %94 = load i32, i32* %b, align 4
  %idxprom84 = sext i32 %94 to i64
  %95 = load i8*, i8** %dpix, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %95, i64 %idxprom84
  store i8 %conv83, i8* %arrayidx85, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %96 = load i32, i32* %b, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  br label %if.end.86

if.end.86:                                        ; preds = %for.end, %for.body.55
  %97 = load i32, i32* %bytes, align 4
  %98 = load i8*, i8** %upix, align 8
  %idx.ext = sext i32 %97 to i64
  %add.ptr = getelementptr inbounds i8, i8* %98, i64 %idx.ext
  store i8* %add.ptr, i8** %upix, align 8
  %99 = load i32, i32* %bytes, align 4
  %100 = load i8*, i8** %lpix, align 8
  %idx.ext87 = sext i32 %99 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %100, i64 %idx.ext87
  store i8* %add.ptr88, i8** %lpix, align 8
  %101 = load i32, i32* %bytes, align 4
  %102 = load i8*, i8** %dpix, align 8
  %idx.ext89 = sext i32 %101 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %102, i64 %idx.ext89
  store i8* %add.ptr90, i8** %dpix, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.86
  %103 = load i32, i32* %col, align 4
  %inc92 = add nsw i32 %103, 1
  store i32 %inc92, i32* %col, align 4
  br label %for.cond.52

for.end.93:                                       ; preds = %for.cond.52
  br label %if.end.114

if.else.94:                                       ; preds = %if.end.49
  store i32 0, i32* %col, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.111, %if.else.94
  %104 = load i32, i32* %col, align 4
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %bytes, align 4
  %mul96 = mul nsw i32 %105, %106
  %cmp97 = icmp slt i32 %104, %mul96
  br i1 %cmp97, label %for.body.99, label %for.end.113

for.body.99:                                      ; preds = %for.cond.95
  %107 = load i32, i32* %col, align 4
  %idxprom100 = sext i32 %107 to i64
  %108 = load i8*, i8** %upper, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %108, i64 %idxprom100
  %109 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %109 to i32
  %110 = load i32, i32* %col, align 4
  %idxprom103 = sext i32 %110 to i64
  %111 = load i8*, i8** %lower, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %111, i64 %idxprom103
  %112 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %112 to i32
  %add106 = add i32 %conv102, %conv105
  %div107 = udiv i32 %add106, 2
  %conv108 = trunc i32 %div107 to i8
  %113 = load i32, i32* %col, align 4
  %idxprom109 = sext i32 %113 to i64
  %114 = load i8*, i8** %dest, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %114, i64 %idxprom109
  store i8 %conv108, i8* %arrayidx110, align 1
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.99
  %115 = load i32, i32* %col, align 4
  %inc112 = add nsw i32 %115, 1
  store i32 %inc112, i32* %col, align 4
  br label %for.cond.95

for.end.113:                                      ; preds = %for.cond.95
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %for.end.93
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %for.body
  %116 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool116 = icmp ne %struct._GimpPreview* %116, null
  br i1 %tobool116, label %if.then.117, label %if.else.121

if.then.117:                                      ; preds = %if.end.115
  %117 = load i32, i32* %width, align 4
  %118 = load i32, i32* %bytes, align 4
  %mul118 = mul nsw i32 %117, %118
  %119 = load i8*, i8** %dest, align 8
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %119, i64 %idx.ext119
  store i8* %add.ptr120, i8** %dest, align 8
  br label %if.end.131

if.else.121:                                      ; preds = %if.end.115
  %120 = load i8*, i8** %dest, align 8
  %121 = load i32, i32* %x, align 4
  %122 = load i32, i32* %row, align 4
  %123 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %120, i32 %121, i32 %122, i32 %123)
  %124 = load i32, i32* %row, align 4
  %rem122 = srem i32 %124, 20
  %cmp123 = icmp eq i32 %rem122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.else.121
  %125 = load i32, i32* %row, align 4
  %conv126 = sitofp i32 %125 to double
  %126 = load i32, i32* %height, align 4
  %conv127 = sitofp i32 %126 to double
  %div128 = fdiv double %conv126, %conv127
  %call129 = call i32 @gimp_progress_update(double %div128)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.else.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.117
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %127 = load i32, i32* %row, align 4
  %inc133 = add nsw i32 %127, 1
  store i32 %inc133, i32* %row, align 4
  br label %for.cond

for.end.134:                                      ; preds = %for.cond
  %128 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool135 = icmp ne %struct._GimpPreview* %128, null
  br i1 %tobool135, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %for.end.134
  %129 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %130 = load i8*, i8** %dest_buffer, align 8
  %131 = load i32, i32* %width, align 4
  %132 = load i32, i32* %bytes, align 4
  %mul137 = mul nsw i32 %131, %132
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %129, i8* %130, i32 %mul137)
  %133 = load i8*, i8** %dest_buffer, align 8
  store i8* %133, i8** %dest, align 8
  br label %if.end.144

if.else.138:                                      ; preds = %for.end.134
  %call139 = call i32 @gimp_progress_update(double 1.000000e+00)
  %134 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %134)
  %135 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id140 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %135, i32 0, i32 0
  %136 = load i32, i32* %drawable_id140, align 4
  %call141 = call i32 @gimp_drawable_merge_shadow(i32 %136, i32 1)
  %137 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id142 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %137, i32 0, i32 0
  %138 = load i32, i32* %drawable_id142, align 4
  %139 = load i32, i32* %x, align 4
  %140 = load i32, i32* %y, align 4
  %141 = load i32, i32* %width, align 4
  %142 = load i32, i32* %height, align 4
  %call143 = call i32 @gimp_drawable_update(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.138, %if.then.136
  %143 = load i8*, i8** %lower, align 8
  call void @g_free(i8* %143)
  %144 = load i8*, i8** %upper, align 8
  call void @g_free(i8* %144)
  %145 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %145)
  br label %return

return:                                           ; preds = %if.end.144, %if.then.4
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
