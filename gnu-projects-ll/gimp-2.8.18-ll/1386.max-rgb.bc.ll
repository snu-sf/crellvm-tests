; ModuleID = './plug-ins/common/max-rgb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ValueType = type { i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct.MaxRgbParam_t = type { i32, i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Input image (not used)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"max-p\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"{ MINIMIZE (0), MAXIMIZE (1) }\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"plug-in-max-rgb\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Reduce image to pure red, green, and blue\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"There's no help yet.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Shuji Narazaki (narazaki@InetQ.or.jp)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Shuji Narazaki\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Maxim_um RGB...\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Modify\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.ValueType { i32 1 }, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"Can only operate on RGB drawables.\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"max-rgb\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Maximum RGB Value\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gimp-max-rgb\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"_Hold the maximal channels\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Ho_ld the minimal channels\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Max RGB\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call3 = call i8* @gimp_locale_directory() #5
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call3) #4
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #4
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call8 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call9)
  br label %return

if.end:                                           ; preds = %sw.bb
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @max_rgb_dialog(%struct._GimpDrawable* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  br label %return

if.end.13:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %12 = load i32, i32* %d_int3217, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @pvals, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @pvals to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.18, %sw.bb.14, %if.end.13
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call20 = call i32 @main_function(%struct._GimpDrawable* %13, %struct._GimpPreview* null)
  store i32 %call20, i32* %status, align 4
  %14 = load i32, i32* %run_mode, align 4
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %sw.epilog
  %call22 = call i32 @gimp_displays_flush()
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %sw.epilog
  %15 = load i32, i32* %run_mode, align 4
  %cmp24 = icmp eq i32 %15, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.23
  %16 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %16, 3
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %call27 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @pvals to i8*), i32 4)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true, %if.end.23
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.28, %if.then.12, %if.then
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @max_rgb_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %max = alloca %struct._GtkWidget*, align 8
  %min = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 -5, i8* null)
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpDrawable*, %struct._GimpPreview*)* @main_function to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @pvals, i32 0, i32 0), align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)) #4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0)) #4
  %call20 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 0, i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_radio_button_update to void ()*), i8* bitcast (%struct.ValueType* @pvals to i8*), i32 %26, i8* %call18, i32 1, %struct._GtkWidget** %max, i8* %call19, i32 0, %struct._GtkWidget** %min, i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %max, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 2)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %min, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 2)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
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
  %call25 = call i64 @gimp_dialog_get_type() #5
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

; Function Attrs: nounwind uwtable
define internal i32 @main_function(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %param = alloca %struct.MaxRgbParam_t, align 4
  %i = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %src = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @pvals, i32 0, i32 0), align 4
  %cmp = icmp sgt i32 %0, 0
  %cond = select i1 %cmp, i32 0, i32 255
  %init_value = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %param, i32 0, i32 0
  store i32 %cond, i32* %init_value, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @pvals, i32 0, i32 0), align 4
  %cmp1 = icmp slt i32 0, %1
  %cond2 = select i1 %cmp1, i32 1, i32 -1
  %flag = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %param, i32 0, i32 1
  store i32 %cond2, i32* %flag, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %3)
  %has_alpha = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %param, i32 0, i32 2
  store i32 %call, i32* %has_alpha, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %6 = bitcast %struct._GimpPreview* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_zoom_preview_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpZoomPreview*
  %call5 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %7, i32* %width, i32* %height, i32* %bpp)
  store i8* %call5, i8** %src, align 8
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %bpp, align 4
  %mul6 = mul nsw i32 %mul, %10
  %conv = sext i32 %mul6 to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul8 = mul nsw i32 %12, %13
  %cmp9 = icmp slt i32 %11, %mul8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %src, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %bpp, align 4
  %mul11 = mul nsw i32 %15, %16
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %17 = load i8*, i8** %buffer, align 8
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %bpp, align 4
  %mul12 = mul nsw i32 %18, %19
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %17, i64 %idx.ext13
  %20 = load i32, i32* %bpp, align 4
  %21 = bitcast %struct.MaxRgbParam_t* %param to i8*
  call void @max_rgb_func(i8* %add.ptr, i8* %add.ptr14, i32 %20, i8* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %24 = load i8*, i8** %buffer, align 8
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %bpp, align 4
  %mul15 = mul nsw i32 %25, %26
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %23, i8* %24, i32 %mul15)
  %27 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %src, align 8
  call void @g_free(i8* %28)
  br label %if.end

if.else:                                          ; preds = %entry
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #4
  %call17 = call i32 @gimp_progress_init(i8* %call16)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct.MaxRgbParam_t* %param to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %29, i32 0, void (i8*, i8*, i32, i8*)* @max_rgb_func, i8* %30)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret i32 3
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

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

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @max_rgb_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.MaxRgbParam_t*, align 8
  %ch = alloca i32, align 4
  %max_ch = alloca i32, align 4
  %max = alloca i8, align 1
  %tmp_value = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MaxRgbParam_t*
  store %struct.MaxRgbParam_t* %1, %struct.MaxRgbParam_t** %param, align 8
  store i32 0, i32* %max_ch, align 4
  %2 = load %struct.MaxRgbParam_t*, %struct.MaxRgbParam_t** %param, align 8
  %init_value = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %2, i32 0, i32 0
  %3 = load i32, i32* %init_value, align 4
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %max, align 1
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %ch, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.MaxRgbParam_t*, %struct.MaxRgbParam_t** %param, align 8
  %flag = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %5, i32 0, i32 1
  %6 = load i32, i32* %flag, align 4
  %7 = load i8, i8* %max, align 1
  %conv2 = zext i8 %7 to i32
  %mul = mul nsw i32 %6, %conv2
  %8 = load %struct.MaxRgbParam_t*, %struct.MaxRgbParam_t** %param, align 8
  %flag3 = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %8, i32 0, i32 1
  %9 = load i32, i32* %flag3, align 4
  %10 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %tmp_value, align 1
  %conv4 = zext i8 %11 to i32
  %mul5 = mul nsw i32 %9, %conv4
  %cmp6 = icmp sle i32 %mul, %mul5
  br i1 %cmp6, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %12 = load i8, i8* %max, align 1
  %conv8 = zext i8 %12 to i32
  %13 = load i8, i8* %tmp_value, align 1
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %14 = load i32, i32* %ch, align 4
  %shl = shl i32 1, %14
  %15 = load i32, i32* %max_ch, align 4
  %add = add nsw i32 %15, %shl
  store i32 %add, i32* %max_ch, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %ch, align 4
  %shl13 = shl i32 1, %16
  store i32 %shl13, i32* %max_ch, align 4
  %17 = load i8, i8* %tmp_value, align 1
  store i8 %17, i8* %max, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %18 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %max_ch, align 4
  %and = and i32 %19, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %20 = load i8, i8* %max, align 1
  %conv15 = zext i8 %20 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ 0, %cond.false ]
  %conv16 = trunc i32 %cond to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %conv16, i8* %arrayidx, align 1
  %22 = load i32, i32* %max_ch, align 4
  %and17 = and i32 %22, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end
  %23 = load i8, i8* %max, align 1
  %conv20 = zext i8 %23 to i32
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %conv20, %cond.true.19 ], [ 0, %cond.false.21 ]
  %conv24 = trunc i32 %cond23 to i8
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %conv24, i8* %arrayidx25, align 1
  %25 = load i32, i32* %max_ch, align 4
  %and26 = and i32 %25, 4
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end.22
  %26 = load i8, i8* %max, align 1
  %conv29 = zext i8 %26 to i32
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.22
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi i32 [ %conv29, %cond.true.28 ], [ 0, %cond.false.30 ]
  %conv33 = trunc i32 %cond32 to i8
  %27 = load i8*, i8** %dest.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %conv33, i8* %arrayidx34, align 1
  %28 = load %struct.MaxRgbParam_t*, %struct.MaxRgbParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.MaxRgbParam_t, %struct.MaxRgbParam_t* %28, i32 0, i32 2
  %29 = load i32, i32* %has_alpha, align 4
  %tobool35 = icmp ne i32 %29, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %cond.end.31
  %30 = load i8*, i8** %src.addr, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %dest.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %31, i8* %arrayidx37, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %cond.end.31
  ret void
}

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
