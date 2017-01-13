; ModuleID = './plug-ins/common/hot.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { double, double, [3 x [3 x double]] }
%struct.piArgs = type { i32, i32, i32, i32, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"The Image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"The Drawable\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Mode { NTSC (0), PAL (1) }\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"The action to perform\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"new-layer\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Create a new layer { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"plug-in-hot\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Find and fix pixels that may be unsafely bright\00", align 1
@.str.14 = private unnamed_addr constant [264 x i8] c"hot scans an image for pixels that will give unsave values of chrominance or composite signale amplitude when encoded into an NTSC or PAL signal.  Three actions can be performed on these ``hot'' pixels. (0) reduce luminance, (1) reduce saturation, or (2) Blacken.\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Eric L. Hernes, Alan Wm Paeth\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Eric L. Hernes\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"_Hot...\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@run.rvals = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gimp-hot\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"N_TSC\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"_PAL\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Create _new layer\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Reduce _Luminance\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Reduce _Saturation\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"_Blacken\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@pluginCore.mode_names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)], align 16
@.str.39 = private unnamed_addr constant [10 x i8] c"lum redux\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sat redux\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@pluginCore.action_names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [18 x i8] c"hot mask (%s, %s)\00", align 1
@tab = internal global [3 x [3 x [256 x i32]]] zeroinitializer, align 16
@chroma_lim = internal global double 0.000000e+00, align 8
@compos_lim = internal global double 0.000000e+00, align 8
@mode = internal global [2 x %struct.anon] [%struct.anon { double 7.500000e+00, double 2.200000e+00, [3 x [3 x double]] [[3 x double] [double 2.989000e-01, double 5.866000e-01, double 1.144000e-01], [3 x double] [double 5.959000e-01, double -2.741000e-01, double -3.218000e-01], [3 x double] [double 2.113000e-01, double -5.227000e-01, double 3.113000e-01]] }, %struct.anon { double 0.000000e+00, double 2.800000e+00, [3 x [3 x double]] [[3 x double] [double 2.989000e-01, double 5.866000e-01, double 1.144000e-01], [3 x double] [double -1.473000e-01, double -2.891000e-01, double 4.364000e-01], [3 x double] [double 6.149000e-01, double -5.145000e-01, double -1.004000e-01]] }], align 16
@ichroma_lim2 = internal global i64 0, align 8
@icompos_lim = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 6, i32 0, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparam, %struct._GimpParam* %param, i32* %nretvals, %struct._GimpParam** %retvals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparam.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nretvals.addr = alloca i32*, align 8
  %retvals.addr = alloca %struct._GimpParam**, align 8
  %args = alloca %struct.piArgs, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparam, i32* %nparam.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nretvals, i32** %nretvals.addr, align 8
  store %struct._GimpParam** %retvals, %struct._GimpParam*** %retvals.addr, align 8
  %0 = load i32*, i32** %nretvals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %retvals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i32 0), %struct._GimpParam** %1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = bitcast %struct.piArgs* %args to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 20, i32 4, i1 false)
  %mode = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 2
  store i32 -1, i32* %mode, align 4
  %3 = bitcast %struct.piArgs* %args to i8*
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_image, align 4
  %image = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 0
  store i32 %5, i32* %image, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %drawable = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 1
  store i32 %7, i32* %drawable, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data8 to i32*
  %9 = load i32, i32* %d_int32, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.19
    i32 2, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %do.end
  %mode9 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 2
  %10 = load i32, i32* %mode9, align 4
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %mode10 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 2
  store i32 0, i32* %mode10, align 4
  %action = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 3
  store i32 0, i32* %action, align 4
  %new_layerp = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 4
  store i32 1, i32* %new_layerp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %call11 = call i32 @plugin_dialog(%struct.piArgs* %args)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %call13 = call i32 @pluginCore(%struct.piArgs* %args)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.17

if.else:                                          ; preds = %if.end
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16
  %11 = bitcast %struct.piArgs* %args to i8*
  %call18 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %11, i32 20)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end
  %12 = load i32, i32* %nparam.addr, align 4
  %cmp20 = icmp ne i32 %12, 6
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.19
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %sw.epilog

if.end.22:                                        ; preds = %sw.bb.19
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_int3225 = bitcast %union._GimpParamData* %data24 to i32*
  %14 = load i32, i32* %d_int3225, align 4
  %mode26 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 2
  store i32 %14, i32* %mode26, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %16 = load i32, i32* %d_int3229, align 4
  %action30 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 3
  store i32 %16, i32* %action30, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 5
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %18 = load i32, i32* %d_int3233, align 4
  %new_layerp34 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %args, i32 0, i32 4
  store i32 %18, i32* %new_layerp34, align 4
  %call35 = call i32 @pluginCore(%struct.piArgs* %args)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.22
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %sw.epilog

if.end.38:                                        ; preds = %if.end.22
  br label %sw.epilog

sw.bb.39:                                         ; preds = %do.end
  %call40 = call i32 @pluginCore(%struct.piArgs* %args)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %sw.bb.39
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.rvals, i32 0, i64 0, i32 1) to i32*), align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %sw.bb.39
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.43, %if.end.38, %if.then.37, %if.then.21, %if.end.17
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @plugin_dialog(%struct.piArgs* %argp) #0 {
entry:
  %argp.addr = alloca %struct.piArgs*, align 8
  %dlg = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct.piArgs* %argp, %struct.piArgs** %argp.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #4
  %21 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode = getelementptr inbounds %struct.piArgs, %struct.piArgs* %21, i32 0, i32 2
  %22 = bitcast i32* %mode to i8*
  %23 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode18 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %23, i32 0, i32 2
  %24 = load i32, i32* %mode18, align 4
  %call19 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call17, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %22, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 0, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* null, i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #4
  %call23 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call22)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %toggle, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_toggle_button_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkToggleButton*
  %33 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp = getelementptr inbounds %struct.piArgs, %struct.piArgs* %33, i32 0, i32 4
  %34 = load i32, i32* %new_layerp, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %32, i32 %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %41 = bitcast %struct._GtkWidget* %40 to i8*
  %42 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp28 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %42, i32 0, i32 4
  %43 = bitcast i32* %new_layerp28 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #4
  %44 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %action = getelementptr inbounds %struct.piArgs, %struct.piArgs* %44, i32 0, i32 3
  %45 = bitcast i32* %action to i8*
  %46 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %action31 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %46, i32 0, i32 3
  %47 = load i32, i32* %action31, align 4
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0)) #4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0)) #4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #4
  %call35 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call30, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* %45, i32 %47, i8* %call32, i32 0, i8* null, i8* %call33, i32 1, i8* null, i8* %call34, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %frame, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_dialog_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call38)
  %56 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDialog*
  %call40 = call i32 @gimp_dialog_run(%struct._GimpDialog* %56)
  %cmp = icmp eq i32 %call40, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %57)
  %58 = load i32, i32* %run, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @pluginCore(%struct.piArgs* %argp) #0 {
entry:
  %argp.addr = alloca %struct.piArgs*, align 8
  %drw = alloca %struct._GimpDrawable*, align 8
  %ndrw = alloca %struct._GimpDrawable*, align 8
  %srcPr = alloca %struct._GimpPixelRgn, align 8
  %dstPr = alloca %struct._GimpPixelRgn, align 8
  %success = alloca i32, align 4
  %nl = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %Y = alloca i32, align 4
  %I = alloca i32, align 4
  %Q = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %sel_x1 = alloca i32, align 4
  %sel_x2 = alloca i32, align 4
  %sel_y1 = alloca i32, align 4
  %sel_y2 = alloca i32, align 4
  %prog_interval = alloca i32, align 4
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %d = alloca i8*, align 8
  %r = alloca i8, align 1
  %prev_r = alloca i8, align 1
  %new_r = alloca i8, align 1
  %g = alloca i8, align 1
  %prev_g = alloca i8, align 1
  %new_g = alloca i8, align 1
  %b = alloca i8, align 1
  %prev_b = alloca i8, align 1
  %new_b = alloca i8, align 1
  %fy = alloca double, align 8
  %fc = alloca double, align 8
  %t = alloca double, align 8
  %scale = alloca double, align 8
  %pr = alloca double, align 8
  %pg = alloca double, align 8
  %pb = alloca double, align 8
  %py = alloca double, align 8
  %name = alloca [40 x i8], align 16
  %mode_names = alloca [2 x i8*], align 16
  %action_names = alloca [3 x i8*], align 16
  %x = alloca i32, align 4
  store %struct.piArgs* %argp, %struct.piArgs** %argp.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %ndrw, align 8
  store i32 1, i32* %success, align 4
  store i32 0, i32* %nl, align 4
  store i8 0, i8* %prev_r, align 1
  store i8 0, i8* %new_r, align 1
  store i8 0, i8* %prev_g, align 1
  store i8 0, i8* %new_g, align 1
  store i8 0, i8* %prev_b, align 1
  store i8 0, i8* %new_b, align 1
  %0 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %drawable = getelementptr inbounds %struct.piArgs, %struct.piArgs* %0, i32 0, i32 1
  %1 = load i32, i32* %drawable, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drw, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width1, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height2, align 4
  store i32 %5, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %bpp3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp3, align 4
  store i32 %7, i32* %bpp, align 4
  %8 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp = getelementptr inbounds %struct.piArgs, %struct.piArgs* %8, i32 0, i32 4
  %9 = load i32, i32* %new_layerp, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = bitcast [2 x i8*]* %mode_names to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([2 x i8*]* @pluginCore.mode_names to i8*), i64 16, i32 16, i1 false)
  %11 = bitcast [3 x i8*]* %action_names to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([3 x i8*]* @pluginCore.action_names to i8*), i64 24, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %name, i32 0, i32 0
  %12 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode = getelementptr inbounds %struct.piArgs, %struct.piArgs* %12, i32 0, i32 2
  %13 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %mode_names, i32 0, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %action = getelementptr inbounds %struct.piArgs, %struct.piArgs* %15, i32 0, i32 3
  %16 = load i32, i32* %action, align 4
  %idxprom4 = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds [3 x i8*], [3 x i8*]* %action_names, i32 0, i64 %idxprom4
  %17 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* %14, i8* %17)
  %18 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %image = getelementptr inbounds %struct.piArgs, %struct.piArgs* %18, i32 0, i32 0
  %19 = load i32, i32* %image, align 4
  %arraydecay7 = getelementptr inbounds [40 x i8], [40 x i8]* %name, i32 0, i32 0
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %call8 = call i32 @gimp_layer_new(i32 %19, i8* %arraydecay7, i32 %20, i32 %21, i32 1, double 1.000000e+02, i32 0)
  store i32 %call8, i32* %nl, align 4
  %22 = load i32, i32* %nl, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %22)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %ndrw, align 8
  %23 = load i32, i32* %nl, align 4
  %call10 = call i32 @gimp_drawable_fill(i32 %23, i32 3)
  %24 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %image11 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %24, i32 0, i32 0
  %25 = load i32, i32* %image11, align 4
  %26 = load i32, i32* %nl, align 4
  %call12 = call i32 @gimp_image_insert_layer(i32 %25, i32 %26, i32 -1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id, align 4
  %call13 = call i32 @gimp_drawable_mask_bounds(i32 %28, i32* %sel_x1, i32* %sel_y1, i32* %sel_x2, i32* %sel_y2)
  %29 = load i32, i32* %sel_x2, align 4
  %30 = load i32, i32* %sel_x1, align 4
  %sub = sub nsw i32 %29, %30
  store i32 %sub, i32* %width, align 4
  %31 = load i32, i32* %sel_y2, align 4
  %32 = load i32, i32* %sel_y1, align 4
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %height, align 4
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %mul = mul i32 %33, %34
  %35 = load i32, i32* %bpp, align 4
  %mul15 = mul i32 %mul, %35
  %conv = zext i32 %mul15 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call16, i8** %src, align 8
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  %mul17 = mul i32 %36, %37
  %mul18 = mul i32 %mul17, 4
  %conv19 = zext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %dst, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %39 = load i32, i32* %sel_x1, align 4
  %40 = load i32, i32* %sel_y1, align 4
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPr, %struct._GimpDrawable* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 0, i32 0)
  %43 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp21 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %43, i32 0, i32 4
  %44 = load i32, i32* %new_layerp21, align 4
  %tobool22 = icmp ne i32 %44, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %ndrw, align 8
  %46 = load i32, i32* %sel_x1, align 4
  %47 = load i32, i32* %sel_y1, align 4
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dstPr, %struct._GimpDrawable* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 0, i32 0)
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %51 = load i32, i32* %sel_x1, align 4
  %52 = load i32, i32* %sel_y1, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dstPr, %struct._GimpDrawable* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 1, i32 1)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %55 = load i8*, i8** %src, align 8
  %56 = load i32, i32* %sel_x1, align 4
  %57 = load i32, i32* %sel_y1, align 4
  %58 = load i32, i32* %width, align 4
  %59 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %srcPr, i8* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %60 = load i8*, i8** %src, align 8
  store i8* %60, i8** %s, align 8
  %61 = load i8*, i8** %dst, align 8
  store i8* %61, i8** %d, align 8
  %62 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode25 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %62, i32 0, i32 2
  %63 = load i32, i32* %mode25, align 4
  call void @build_tab(i32 %63)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)) #4
  %call27 = call i32 @gimp_progress_init(i8* %call26)
  %64 = load i32, i32* %height, align 4
  %div = udiv i32 %64, 10
  store i32 %div, i32* %prog_interval, align 4
  %65 = load i32, i32* %sel_y1, align 4
  store i32 %65, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.290, %if.end.24
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %sel_y2, align 4
  %cmp = icmp slt i32 %66, %67
  br i1 %cmp, label %for.body, label %for.end.292

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %y, align 4
  %69 = load i32, i32* %prog_interval, align 4
  %rem = srem i32 %68, %69
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %for.body
  %70 = load i32, i32* %y, align 4
  %conv32 = sitofp i32 %70 to double
  %71 = load i32, i32* %sel_y2, align 4
  %72 = load i32, i32* %sel_y1, align 4
  %sub33 = sub nsw i32 %71, %72
  %conv34 = sitofp i32 %sub33 to double
  %div35 = fdiv double %conv32, %conv34
  %call36 = call i32 @gimp_progress_update(double %div35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %for.body
  %73 = load i32, i32* %sel_x1, align 4
  store i32 %73, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.287, %if.end.37
  %74 = load i32, i32* %x, align 4
  %75 = load i32, i32* %sel_x2, align 4
  %cmp39 = icmp slt i32 %74, %75
  br i1 %cmp39, label %for.body.41, label %for.end.289

for.body.41:                                      ; preds = %for.cond.38
  %76 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %add.ptr, align 1
  store i8 %77, i8* %r, align 1
  %78 = load i8*, i8** %s, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %add.ptr42, align 1
  store i8 %79, i8* %g, align 1
  %80 = load i8*, i8** %s, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %add.ptr43, align 1
  store i8 %81, i8* %b, align 1
  %call44 = call i32 @hotp(i8 zeroext %77, i8 zeroext %79, i8 zeroext %81)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.269

if.then.46:                                       ; preds = %for.body.41
  %82 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %action47 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %82, i32 0, i32 3
  %83 = load i32, i32* %action47, align 4
  %cmp48 = icmp eq i32 %83, 2
  br i1 %cmp48, label %if.then.50, label %if.else.68

if.then.50:                                       ; preds = %if.then.46
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.50
  %84 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %84, 3
  br i1 %cmp52, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.51
  %85 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 0, i8* %85, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.54
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  %87 = load i8*, i8** %s, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %87, i64 3
  store i8* %add.ptr55, i8** %s, align 8
  %88 = load i32, i32* %bpp, align 4
  %cmp56 = icmp eq i32 %88, 4
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %for.end
  %89 = load i8*, i8** %s, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr59, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %d, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr60, i8** %d, align 8
  store i8 %90, i8* %91, align 1
  br label %if.end.67

if.else.61:                                       ; preds = %for.end
  %92 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp62 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %92, i32 0, i32 4
  %93 = load i32, i32* %new_layerp62, align 4
  %tobool63 = icmp ne i32 %93, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.else.61
  %94 = load i8*, i8** %d, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr65, i8** %d, align 8
  store i8 -1, i8* %94, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.else.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.58
  br label %if.end.268

if.else.68:                                       ; preds = %if.then.46
  %95 = load i8, i8* %r, align 1
  %conv69 = zext i8 %95 to i32
  %96 = load i8, i8* %prev_r, align 1
  %conv70 = zext i8 %96 to i32
  %cmp71 = icmp eq i32 %conv69, %conv70
  br i1 %cmp71, label %land.lhs.true, label %if.else.99

land.lhs.true:                                    ; preds = %if.else.68
  %97 = load i8, i8* %g, align 1
  %conv73 = zext i8 %97 to i32
  %98 = load i8, i8* %prev_g, align 1
  %conv74 = zext i8 %98 to i32
  %cmp75 = icmp eq i32 %conv73, %conv74
  br i1 %cmp75, label %land.lhs.true.77, label %if.else.99

land.lhs.true.77:                                 ; preds = %land.lhs.true
  %99 = load i8, i8* %b, align 1
  %conv78 = zext i8 %99 to i32
  %100 = load i8, i8* %prev_b, align 1
  %conv79 = zext i8 %100 to i32
  %cmp80 = icmp eq i32 %conv78, %conv79
  br i1 %cmp80, label %if.then.82, label %if.else.99

if.then.82:                                       ; preds = %land.lhs.true.77
  %101 = load i8, i8* %new_r, align 1
  %102 = load i8*, i8** %d, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr83, i8** %d, align 8
  store i8 %101, i8* %102, align 1
  %103 = load i8, i8* %new_g, align 1
  %104 = load i8*, i8** %d, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr84, i8** %d, align 8
  store i8 %103, i8* %104, align 1
  %105 = load i8, i8* %new_b, align 1
  %106 = load i8*, i8** %d, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr85, i8** %d, align 8
  store i8 %105, i8* %106, align 1
  %107 = load i8*, i8** %s, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %107, i64 3
  store i8* %add.ptr86, i8** %s, align 8
  %108 = load i32, i32* %bpp, align 4
  %cmp87 = icmp eq i32 %108, 4
  br i1 %cmp87, label %if.then.89, label %if.else.92

if.then.89:                                       ; preds = %if.then.82
  %109 = load i8*, i8** %s, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr90, i8** %s, align 8
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %d, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr91, i8** %d, align 8
  store i8 %110, i8* %111, align 1
  br label %if.end.98

if.else.92:                                       ; preds = %if.then.82
  %112 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp93 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %112, i32 0, i32 4
  %113 = load i32, i32* %new_layerp93, align 4
  %tobool94 = icmp ne i32 %113, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.else.92
  %114 = load i8*, i8** %d, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr96, i8** %d, align 8
  store i8 -1, i8* %114, align 1
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.else.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.89
  br label %if.end.267

if.else.99:                                       ; preds = %land.lhs.true.77, %land.lhs.true, %if.else.68
  %115 = load i8, i8* %r, align 1
  %idxprom100 = zext i8 %115 to i64
  %arrayidx101 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 0), i32 0, i64 %idxprom100
  %116 = load i32, i32* %arrayidx101, align 4
  %117 = load i8, i8* %g, align 1
  %idxprom102 = zext i8 %117 to i64
  %arrayidx103 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 1), i32 0, i64 %idxprom102
  %118 = load i32, i32* %arrayidx103, align 4
  %add = add nsw i32 %116, %118
  %119 = load i8, i8* %b, align 1
  %idxprom104 = zext i8 %119 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 2), i32 0, i64 %idxprom104
  %120 = load i32, i32* %arrayidx105, align 4
  %add106 = add nsw i32 %add, %120
  store i32 %add106, i32* %Y, align 4
  %121 = load i8, i8* %r, align 1
  %idxprom107 = zext i8 %121 to i64
  %arrayidx108 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 0), i32 0, i64 %idxprom107
  %122 = load i32, i32* %arrayidx108, align 4
  %123 = load i8, i8* %g, align 1
  %idxprom109 = zext i8 %123 to i64
  %arrayidx110 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 1), i32 0, i64 %idxprom109
  %124 = load i32, i32* %arrayidx110, align 4
  %add111 = add nsw i32 %122, %124
  %125 = load i8, i8* %b, align 1
  %idxprom112 = zext i8 %125 to i64
  %arrayidx113 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 2), i32 0, i64 %idxprom112
  %126 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %add111, %126
  store i32 %add114, i32* %I, align 4
  %127 = load i8, i8* %r, align 1
  %idxprom115 = zext i8 %127 to i64
  %arrayidx116 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 0), i32 0, i64 %idxprom115
  %128 = load i32, i32* %arrayidx116, align 4
  %129 = load i8, i8* %g, align 1
  %idxprom117 = zext i8 %129 to i64
  %arrayidx118 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 1), i32 0, i64 %idxprom117
  %130 = load i32, i32* %arrayidx118, align 4
  %add119 = add nsw i32 %128, %130
  %131 = load i8, i8* %b, align 1
  %idxprom120 = zext i8 %131 to i64
  %arrayidx121 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 2), i32 0, i64 %idxprom120
  %132 = load i32, i32* %arrayidx121, align 4
  %add122 = add nsw i32 %add119, %132
  store i32 %add122, i32* %Q, align 4
  %133 = load i8, i8* %r, align 1
  store i8 %133, i8* %prev_r, align 1
  %134 = load i8, i8* %g, align 1
  store i8 %134, i8* %prev_g, align 1
  %135 = load i8, i8* %b, align 1
  store i8 %135, i8* %prev_b, align 1
  %136 = load i32, i32* %Y, align 4
  %conv123 = sitofp i32 %136 to double
  %div124 = fdiv double %conv123, 8.192000e+03
  store double %div124, double* %fy, align 8
  %137 = load i32, i32* %I, align 4
  %conv125 = sitofp i32 %137 to double
  %div126 = fdiv double %conv125, 8.192000e+03
  %138 = load i32, i32* %Q, align 4
  %conv127 = sitofp i32 %138 to double
  %div128 = fdiv double %conv127, 8.192000e+03
  %call129 = call double @hypot(double %div126, double %div128) #4
  store double %call129, double* %fc, align 8
  %139 = load i8, i8* %r, align 1
  %conv130 = uitofp i8 %139 to double
  %div131 = fdiv double %conv130, 2.550000e+02
  store double %div131, double* %pr, align 8
  %140 = load i8, i8* %g, align 1
  %conv132 = uitofp i8 %140 to double
  %div133 = fdiv double %conv132, 2.550000e+02
  store double %div133, double* %pg, align 8
  %141 = load i8, i8* %b, align 1
  %conv134 = uitofp i8 %141 to double
  %div135 = fdiv double %conv134, 2.550000e+02
  store double %div135, double* %pb, align 8
  %142 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %action136 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %142, i32 0, i32 3
  %143 = load i32, i32* %action136, align 4
  %cmp137 = icmp eq i32 %143, 0
  br i1 %cmp137, label %if.then.139, label %if.else.166

if.then.139:                                      ; preds = %if.else.99
  %144 = load double, double* @chroma_lim, align 8
  %145 = load double, double* %fc, align 8
  %div140 = fdiv double %144, %145
  store double %div140, double* %scale, align 8
  %146 = load double, double* @compos_lim, align 8
  %147 = load double, double* %fy, align 8
  %148 = load double, double* %fc, align 8
  %add141 = fadd double %147, %148
  %div142 = fdiv double %146, %add141
  store double %div142, double* %t, align 8
  %149 = load double, double* %t, align 8
  %150 = load double, double* %scale, align 8
  %cmp143 = fcmp olt double %149, %150
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.then.139
  %151 = load double, double* %t, align 8
  store double %151, double* %scale, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.then.139
  %152 = load double, double* %scale, align 8
  %153 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode147 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %153, i32 0, i32 2
  %154 = load i32, i32* %mode147, align 4
  %idxprom148 = sext i32 %154 to i64
  %arrayidx149 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom148
  %gamma = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx149, i32 0, i32 1
  %155 = load double, double* %gamma, align 8
  %call150 = call double @pow(double %152, double %155) #4
  store double %call150, double* %scale, align 8
  %156 = load double, double* %scale, align 8
  %157 = load double, double* %pr, align 8
  %mul151 = fmul double %156, %157
  %mul152 = fmul double %mul151, 2.550000e+02
  %add153 = fadd double %mul152, 5.000000e-01
  %conv154 = fptosi double %add153 to i32
  %conv155 = trunc i32 %conv154 to i8
  store i8 %conv155, i8* %r, align 1
  %158 = load double, double* %scale, align 8
  %159 = load double, double* %pg, align 8
  %mul156 = fmul double %158, %159
  %mul157 = fmul double %mul156, 2.550000e+02
  %add158 = fadd double %mul157, 5.000000e-01
  %conv159 = fptosi double %add158 to i32
  %conv160 = trunc i32 %conv159 to i8
  store i8 %conv160, i8* %g, align 1
  %160 = load double, double* %scale, align 8
  %161 = load double, double* %pb, align 8
  %mul161 = fmul double %160, %161
  %mul162 = fmul double %mul161, 2.550000e+02
  %add163 = fadd double %mul162, 5.000000e-01
  %conv164 = fptosi double %add163 to i32
  %conv165 = trunc i32 %conv164 to i8
  store i8 %conv165, i8* %b, align 1
  br label %if.end.250

if.else.166:                                      ; preds = %if.else.99
  %162 = load double, double* @chroma_lim, align 8
  %163 = load double, double* %fc, align 8
  %div167 = fdiv double %162, %163
  store double %div167, double* %scale, align 8
  %164 = load double, double* @compos_lim, align 8
  %165 = load double, double* %fy, align 8
  %sub168 = fsub double %164, %165
  %166 = load double, double* %fc, align 8
  %div169 = fdiv double %sub168, %166
  store double %div169, double* %t, align 8
  %167 = load double, double* %t, align 8
  %168 = load double, double* %scale, align 8
  %cmp170 = fcmp olt double %167, %168
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.else.166
  %169 = load double, double* %t, align 8
  store double %169, double* %scale, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.else.166
  %170 = load double, double* %pr, align 8
  %171 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode174 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %171, i32 0, i32 2
  %172 = load i32, i32* %mode174, align 4
  %idxprom175 = sext i32 %172 to i64
  %arrayidx176 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom175
  %gamma177 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx176, i32 0, i32 1
  %173 = load double, double* %gamma177, align 8
  %div178 = fdiv double 1.000000e+00, %173
  %call179 = call double @pow(double %170, double %div178) #4
  store double %call179, double* %pr, align 8
  %174 = load double, double* %pg, align 8
  %175 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode180 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %175, i32 0, i32 2
  %176 = load i32, i32* %mode180, align 4
  %idxprom181 = sext i32 %176 to i64
  %arrayidx182 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom181
  %gamma183 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx182, i32 0, i32 1
  %177 = load double, double* %gamma183, align 8
  %div184 = fdiv double 1.000000e+00, %177
  %call185 = call double @pow(double %174, double %div184) #4
  store double %call185, double* %pg, align 8
  %178 = load double, double* %pb, align 8
  %179 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode186 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %179, i32 0, i32 2
  %180 = load i32, i32* %mode186, align 4
  %idxprom187 = sext i32 %180 to i64
  %arrayidx188 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom187
  %gamma189 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx188, i32 0, i32 1
  %181 = load double, double* %gamma189, align 8
  %div190 = fdiv double 1.000000e+00, %181
  %call191 = call double @pow(double %178, double %div190) #4
  store double %call191, double* %pb, align 8
  %182 = load double, double* %pr, align 8
  %183 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode192 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %183, i32 0, i32 2
  %184 = load i32, i32* %mode192, align 4
  %idxprom193 = sext i32 %184 to i64
  %arrayidx194 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom193
  %code = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx194, i32 0, i32 2
  %arrayidx195 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code, i32 0, i64 0
  %arrayidx196 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx195, i32 0, i64 0
  %185 = load double, double* %arrayidx196, align 8
  %mul197 = fmul double %182, %185
  %186 = load double, double* %pg, align 8
  %187 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode198 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %187, i32 0, i32 2
  %188 = load i32, i32* %mode198, align 4
  %idxprom199 = sext i32 %188 to i64
  %arrayidx200 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom199
  %code201 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx200, i32 0, i32 2
  %arrayidx202 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code201, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx202, i32 0, i64 1
  %189 = load double, double* %arrayidx203, align 8
  %mul204 = fmul double %186, %189
  %add205 = fadd double %mul197, %mul204
  %190 = load double, double* %pb, align 8
  %191 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode206 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %191, i32 0, i32 2
  %192 = load i32, i32* %mode206, align 4
  %idxprom207 = sext i32 %192 to i64
  %arrayidx208 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom207
  %code209 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx208, i32 0, i32 2
  %arrayidx210 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code209, i32 0, i64 0
  %arrayidx211 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx210, i32 0, i64 2
  %193 = load double, double* %arrayidx211, align 8
  %mul212 = fmul double %190, %193
  %add213 = fadd double %add205, %mul212
  store double %add213, double* %py, align 8
  %194 = load double, double* %py, align 8
  %195 = load double, double* %scale, align 8
  %196 = load double, double* %pr, align 8
  %197 = load double, double* %py, align 8
  %sub214 = fsub double %196, %197
  %mul215 = fmul double %195, %sub214
  %add216 = fadd double %194, %mul215
  %198 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode217 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %198, i32 0, i32 2
  %199 = load i32, i32* %mode217, align 4
  %idxprom218 = sext i32 %199 to i64
  %arrayidx219 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom218
  %gamma220 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx219, i32 0, i32 1
  %200 = load double, double* %gamma220, align 8
  %call221 = call double @pow(double %add216, double %200) #4
  %mul222 = fmul double %call221, 2.550000e+02
  %add223 = fadd double %mul222, 5.000000e-01
  %conv224 = fptosi double %add223 to i32
  %conv225 = trunc i32 %conv224 to i8
  store i8 %conv225, i8* %r, align 1
  %201 = load double, double* %py, align 8
  %202 = load double, double* %scale, align 8
  %203 = load double, double* %pg, align 8
  %204 = load double, double* %py, align 8
  %sub226 = fsub double %203, %204
  %mul227 = fmul double %202, %sub226
  %add228 = fadd double %201, %mul227
  %205 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode229 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %205, i32 0, i32 2
  %206 = load i32, i32* %mode229, align 4
  %idxprom230 = sext i32 %206 to i64
  %arrayidx231 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom230
  %gamma232 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx231, i32 0, i32 1
  %207 = load double, double* %gamma232, align 8
  %call233 = call double @pow(double %add228, double %207) #4
  %mul234 = fmul double %call233, 2.550000e+02
  %add235 = fadd double %mul234, 5.000000e-01
  %conv236 = fptosi double %add235 to i32
  %conv237 = trunc i32 %conv236 to i8
  store i8 %conv237, i8* %g, align 1
  %208 = load double, double* %py, align 8
  %209 = load double, double* %scale, align 8
  %210 = load double, double* %pb, align 8
  %211 = load double, double* %py, align 8
  %sub238 = fsub double %210, %211
  %mul239 = fmul double %209, %sub238
  %add240 = fadd double %208, %mul239
  %212 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %mode241 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %212, i32 0, i32 2
  %213 = load i32, i32* %mode241, align 4
  %idxprom242 = sext i32 %213 to i64
  %arrayidx243 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom242
  %gamma244 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx243, i32 0, i32 1
  %214 = load double, double* %gamma244, align 8
  %call245 = call double @pow(double %add240, double %214) #4
  %mul246 = fmul double %call245, 2.550000e+02
  %add247 = fadd double %mul246, 5.000000e-01
  %conv248 = fptosi double %add247 to i32
  %conv249 = trunc i32 %conv248 to i8
  store i8 %conv249, i8* %b, align 1
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.173, %if.end.146
  %215 = load i8, i8* %r, align 1
  store i8 %215, i8* %new_r, align 1
  %216 = load i8*, i8** %d, align 8
  %incdec.ptr251 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr251, i8** %d, align 8
  store i8 %215, i8* %216, align 1
  %217 = load i8, i8* %g, align 1
  store i8 %217, i8* %new_g, align 1
  %218 = load i8*, i8** %d, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr252, i8** %d, align 8
  store i8 %217, i8* %218, align 1
  %219 = load i8, i8* %b, align 1
  store i8 %219, i8* %new_b, align 1
  %220 = load i8*, i8** %d, align 8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr253, i8** %d, align 8
  store i8 %219, i8* %220, align 1
  %221 = load i8*, i8** %s, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %221, i64 3
  store i8* %add.ptr254, i8** %s, align 8
  %222 = load i32, i32* %bpp, align 4
  %cmp255 = icmp eq i32 %222, 4
  br i1 %cmp255, label %if.then.257, label %if.else.260

if.then.257:                                      ; preds = %if.end.250
  %223 = load i8*, i8** %s, align 8
  %incdec.ptr258 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr258, i8** %s, align 8
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %d, align 8
  %incdec.ptr259 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr259, i8** %d, align 8
  store i8 %224, i8* %225, align 1
  br label %if.end.266

if.else.260:                                      ; preds = %if.end.250
  %226 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp261 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %226, i32 0, i32 4
  %227 = load i32, i32* %new_layerp261, align 4
  %tobool262 = icmp ne i32 %227, 0
  br i1 %tobool262, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %if.else.260
  %228 = load i8*, i8** %d, align 8
  %incdec.ptr264 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr264, i8** %d, align 8
  store i8 -1, i8* %228, align 1
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %if.else.260
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.257
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.98
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.end.67
  br label %if.end.286

if.else.269:                                      ; preds = %for.body.41
  %229 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp270 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %229, i32 0, i32 4
  %230 = load i32, i32* %new_layerp270, align 4
  %tobool271 = icmp ne i32 %230, 0
  br i1 %tobool271, label %if.else.282, label %if.then.272

if.then.272:                                      ; preds = %if.else.269
  store i32 0, i32* %i, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.279, %if.then.272
  %231 = load i32, i32* %i, align 4
  %232 = load i32, i32* %bpp, align 4
  %cmp274 = icmp ult i32 %231, %232
  br i1 %cmp274, label %for.body.276, label %for.end.281

for.body.276:                                     ; preds = %for.cond.273
  %233 = load i8*, i8** %s, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr277, i8** %s, align 8
  %234 = load i8, i8* %233, align 1
  %235 = load i8*, i8** %d, align 8
  %incdec.ptr278 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr278, i8** %d, align 8
  store i8 %234, i8* %235, align 1
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.276
  %236 = load i32, i32* %i, align 4
  %inc280 = add nsw i32 %236, 1
  store i32 %inc280, i32* %i, align 4
  br label %for.cond.273

for.end.281:                                      ; preds = %for.cond.273
  br label %if.end.285

if.else.282:                                      ; preds = %if.else.269
  %237 = load i32, i32* %bpp, align 4
  %238 = load i8*, i8** %s, align 8
  %idx.ext = zext i32 %237 to i64
  %add.ptr283 = getelementptr inbounds i8, i8* %238, i64 %idx.ext
  store i8* %add.ptr283, i8** %s, align 8
  %239 = load i8*, i8** %d, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %239, i64 4
  store i8* %add.ptr284, i8** %d, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.282, %for.end.281
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.268
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.286
  %240 = load i32, i32* %x, align 4
  %inc288 = add nsw i32 %240, 1
  store i32 %inc288, i32* %x, align 4
  br label %for.cond.38

for.end.289:                                      ; preds = %for.cond.38
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.end.289
  %241 = load i32, i32* %y, align 4
  %inc291 = add nsw i32 %241, 1
  store i32 %inc291, i32* %y, align 4
  br label %for.cond

for.end.292:                                      ; preds = %for.cond
  %call293 = call i32 @gimp_progress_update(double 1.000000e+00)
  %242 = load i8*, i8** %dst, align 8
  %243 = load i32, i32* %sel_x1, align 4
  %244 = load i32, i32* %sel_y1, align 4
  %245 = load i32, i32* %width, align 4
  %246 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dstPr, i8* %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %247 = load i8*, i8** %src, align 8
  call void @g_free(i8* %247)
  %248 = load i8*, i8** %dst, align 8
  call void @g_free(i8* %248)
  %249 = load %struct.piArgs*, %struct.piArgs** %argp.addr, align 8
  %new_layerp294 = getelementptr inbounds %struct.piArgs, %struct.piArgs* %249, i32 0, i32 4
  %250 = load i32, i32* %new_layerp294, align 4
  %tobool295 = icmp ne i32 %250, 0
  br i1 %tobool295, label %if.then.296, label %if.else.298

if.then.296:                                      ; preds = %for.end.292
  %251 = load %struct._GimpDrawable*, %struct._GimpDrawable** %ndrw, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %251)
  %252 = load i32, i32* %nl, align 4
  %253 = load i32, i32* %sel_x1, align 4
  %254 = load i32, i32* %sel_y1, align 4
  %255 = load i32, i32* %width, align 4
  %256 = load i32, i32* %height, align 4
  %call297 = call i32 @gimp_drawable_update(i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  br label %if.end.303

if.else.298:                                      ; preds = %for.end.292
  %257 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %257)
  %258 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %drawable_id299 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %258, i32 0, i32 0
  %259 = load i32, i32* %drawable_id299, align 4
  %call300 = call i32 @gimp_drawable_merge_shadow(i32 %259, i32 1)
  %260 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drw, align 8
  %drawable_id301 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %260, i32 0, i32 0
  %261 = load i32, i32* %drawable_id301, align 4
  %262 = load i32, i32* %sel_x1, align 4
  %263 = load i32, i32* %sel_y1, align 4
  %264 = load i32, i32* %width, align 4
  %265 = load i32, i32* %height, align 4
  %call302 = call i32 @gimp_drawable_update(i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  br label %if.end.303

if.end.303:                                       ; preds = %if.else.298, %if.then.296
  %call304 = call i32 @gimp_displays_flush()
  %266 = load i32, i32* %success, align 4
  ret i32 %266
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_drawable_fill(i32, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @build_tab(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %f = alloca double, align 8
  %pv = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 0, i32* %pv, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pv, align 4
  %cmp = icmp sle i32 %0, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pv, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 2.550000e+02
  %2 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom
  %gamma = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %3 = load double, double* %gamma, align 8
  %div1 = fdiv double 1.000000e+00, %3
  %call = call double @pow(double %div, double %div1) #4
  %mul = fmul double 8.192000e+03, %call
  store double %mul, double* %f, align 8
  %4 = load double, double* %f, align 8
  %5 = load i32, i32* %m.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom2
  %code = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 0
  %6 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %4, %6
  %add = fadd double %mul6, 5.000000e-01
  %conv7 = fptosi double %add to i32
  %7 = load i32, i32* %pv, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 0), i32 0, i64 %idxprom8
  store i32 %conv7, i32* %arrayidx9, align 4
  %8 = load double, double* %f, align 8
  %9 = load i32, i32* %m.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom10
  %code12 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx13, i32 0, i64 1
  %10 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %8, %10
  %add16 = fadd double %mul15, 5.000000e-01
  %conv17 = fptosi double %add16 to i32
  %11 = load i32, i32* %pv, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 1), i32 0, i64 %idxprom18
  store i32 %conv17, i32* %arrayidx19, align 4
  %12 = load double, double* %f, align 8
  %13 = load i32, i32* %m.addr, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom20
  %code22 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 2
  %14 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %12, %14
  %add26 = fadd double %mul25, 5.000000e-01
  %conv27 = fptosi double %add26 to i32
  %15 = load i32, i32* %pv, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 2), i32 0, i64 %idxprom28
  store i32 %conv27, i32* %arrayidx29, align 4
  %16 = load double, double* %f, align 8
  %17 = load i32, i32* %m.addr, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom30
  %code32 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code32, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i32 0, i64 0
  %18 = load double, double* %arrayidx34, align 8
  %mul35 = fmul double %16, %18
  %add36 = fadd double %mul35, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  %19 = load i32, i32* %pv, align 4
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 0), i32 0, i64 %idxprom38
  store i32 %conv37, i32* %arrayidx39, align 4
  %20 = load double, double* %f, align 8
  %21 = load i32, i32* %m.addr, align 4
  %idxprom40 = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom40
  %code42 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx41, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code42, i32 0, i64 1
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 1
  %22 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %20, %22
  %add46 = fadd double %mul45, 5.000000e-01
  %conv47 = fptosi double %add46 to i32
  %23 = load i32, i32* %pv, align 4
  %idxprom48 = sext i32 %23 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 1), i32 0, i64 %idxprom48
  store i32 %conv47, i32* %arrayidx49, align 4
  %24 = load double, double* %f, align 8
  %25 = load i32, i32* %m.addr, align 4
  %idxprom50 = sext i32 %25 to i64
  %arrayidx51 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom50
  %code52 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx51, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code52, i32 0, i64 1
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx53, i32 0, i64 2
  %26 = load double, double* %arrayidx54, align 8
  %mul55 = fmul double %24, %26
  %add56 = fadd double %mul55, 5.000000e-01
  %conv57 = fptosi double %add56 to i32
  %27 = load i32, i32* %pv, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 2), i32 0, i64 %idxprom58
  store i32 %conv57, i32* %arrayidx59, align 4
  %28 = load double, double* %f, align 8
  %29 = load i32, i32* %m.addr, align 4
  %idxprom60 = sext i32 %29 to i64
  %arrayidx61 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom60
  %code62 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code62, i32 0, i64 2
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx63, i32 0, i64 0
  %30 = load double, double* %arrayidx64, align 8
  %mul65 = fmul double %28, %30
  %add66 = fadd double %mul65, 5.000000e-01
  %conv67 = fptosi double %add66 to i32
  %31 = load i32, i32* %pv, align 4
  %idxprom68 = sext i32 %31 to i64
  %arrayidx69 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 0), i32 0, i64 %idxprom68
  store i32 %conv67, i32* %arrayidx69, align 4
  %32 = load double, double* %f, align 8
  %33 = load i32, i32* %m.addr, align 4
  %idxprom70 = sext i32 %33 to i64
  %arrayidx71 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom70
  %code72 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx71, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code72, i32 0, i64 2
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx73, i32 0, i64 1
  %34 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %32, %34
  %add76 = fadd double %mul75, 5.000000e-01
  %conv77 = fptosi double %add76 to i32
  %35 = load i32, i32* %pv, align 4
  %idxprom78 = sext i32 %35 to i64
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 1), i32 0, i64 %idxprom78
  store i32 %conv77, i32* %arrayidx79, align 4
  %36 = load double, double* %f, align 8
  %37 = load i32, i32* %m.addr, align 4
  %idxprom80 = sext i32 %37 to i64
  %arrayidx81 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom80
  %code82 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx81, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %code82, i32 0, i64 2
  %arrayidx84 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx83, i32 0, i64 2
  %38 = load double, double* %arrayidx84, align 8
  %mul85 = fmul double %36, %38
  %add86 = fadd double %mul85, 5.000000e-01
  %conv87 = fptosi double %add86 to i32
  %39 = load i32, i32* %pv, align 4
  %idxprom88 = sext i32 %39 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 2), i32 0, i64 %idxprom88
  store i32 %conv87, i32* %arrayidx89, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %pv, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %pv, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %m.addr, align 4
  %idxprom90 = sext i32 %41 to i64
  %arrayidx91 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom90
  %pedestal = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx91, i32 0, i32 0
  %42 = load double, double* %pedestal, align 8
  %sub = fsub double 1.000000e+02, %42
  %div92 = fdiv double 5.000000e+01, %sub
  store double %div92, double* @chroma_lim, align 8
  %43 = load i32, i32* %m.addr, align 4
  %idxprom93 = sext i32 %43 to i64
  %arrayidx94 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom93
  %pedestal95 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx94, i32 0, i32 0
  %44 = load double, double* %pedestal95, align 8
  %sub96 = fsub double 1.100000e+02, %44
  %45 = load i32, i32* %m.addr, align 4
  %idxprom97 = sext i32 %45 to i64
  %arrayidx98 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @mode, i32 0, i64 %idxprom97
  %pedestal99 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx98, i32 0, i32 0
  %46 = load double, double* %pedestal99, align 8
  %sub100 = fsub double 1.000000e+02, %46
  %div101 = fdiv double %sub96, %sub100
  store double %div101, double* @compos_lim, align 8
  %47 = load double, double* @chroma_lim, align 8
  %mul102 = fmul double %47, 8.192000e+03
  %add103 = fadd double %mul102, 5.000000e-01
  %conv104 = fptosi double %add103 to i32
  %conv105 = sext i32 %conv104 to i64
  store i64 %conv105, i64* @ichroma_lim2, align 8
  %48 = load i64, i64* @ichroma_lim2, align 8
  %49 = load i64, i64* @ichroma_lim2, align 8
  %mul106 = mul nsw i64 %49, %48
  store i64 %mul106, i64* @ichroma_lim2, align 8
  %50 = load double, double* @compos_lim, align 8
  %mul107 = fmul double %50, 8.192000e+03
  %add108 = fadd double %mul107, 5.000000e-01
  %conv109 = fptosi double %add108 to i32
  store i32 %conv109, i32* @icompos_lim, align 4
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_progress_update(double) #1

; Function Attrs: nounwind uwtable
define internal i32 @hotp(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %y2 = alloca i64, align 8
  %c2 = alloca i64, align 8
  store i8 %r, i8* %r.addr, align 1
  store i8 %g, i8* %g.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %r.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 0), i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i8, i8* %g.addr, align 1
  %idxprom1 = zext i8 %2 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 1), i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %3
  %4 = load i8, i8* %b.addr, align 1
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 0, i64 2), i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add5 = add nsw i32 %add, %5
  store i32 %add5, i32* %y, align 4
  %6 = load i8, i8* %r.addr, align 1
  %idxprom6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 0), i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %8 = load i8, i8* %g.addr, align 1
  %idxprom8 = zext i8 %8 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 1), i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %7, %9
  %10 = load i8, i8* %b.addr, align 1
  %idxprom11 = zext i8 %10 to i64
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 1, i64 2), i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %add10, %11
  store i32 %add13, i32* %i, align 4
  %12 = load i8, i8* %r.addr, align 1
  %idxprom14 = zext i8 %12 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 0), i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load i8, i8* %g.addr, align 1
  %idxprom16 = zext i8 %14 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 1), i32 0, i64 %idxprom16
  %15 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %13, %15
  %16 = load i8, i8* %b.addr, align 1
  %idxprom19 = zext i8 %16 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds ([3 x [3 x [256 x i32]]], [3 x [3 x [256 x i32]]]* @tab, i32 0, i64 2, i64 2), i32 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %add18, %17
  store i32 %add21, i32* %q, align 4
  %18 = load i32, i32* %i, align 4
  %conv = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %conv22 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv, %conv22
  %20 = load i32, i32* %q, align 4
  %conv23 = sext i32 %20 to i64
  %21 = load i32, i32* %q, align 4
  %conv24 = sext i32 %21 to i64
  %mul25 = mul nsw i64 %conv23, %conv24
  %add26 = add nsw i64 %mul, %mul25
  store i64 %add26, i64* %c2, align 8
  %22 = load i32, i32* @icompos_lim, align 4
  %conv27 = sext i32 %22 to i64
  %23 = load i32, i32* %y, align 4
  %conv28 = sext i32 %23 to i64
  %sub = sub nsw i64 %conv27, %conv28
  store i64 %sub, i64* %y2, align 8
  %24 = load i64, i64* %y2, align 8
  %25 = load i64, i64* %y2, align 8
  %mul29 = mul nsw i64 %25, %24
  store i64 %mul29, i64* %y2, align 8
  %26 = load i64, i64* %c2, align 8
  %27 = load i64, i64* @ichroma_lim2, align 8
  %cmp = icmp sle i64 %26, %27
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %28 = load i64, i64* %c2, align 8
  %29 = load i64, i64* %y2, align 8
  %cmp31 = icmp sle i64 %28, %29
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare double @hypot(double, double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_displays_flush() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
