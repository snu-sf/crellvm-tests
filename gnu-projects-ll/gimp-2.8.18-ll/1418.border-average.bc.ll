; ModuleID = './plug-ins/common/border-average.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.borderaverage_data = type { i32, i32 }
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
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
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
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpRgnIterator = type opaque
%struct.BorderAverageParam_t = type { i32, i32, i32, i32, i32, i32* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Border size to take in count\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"bucket-exponent\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Bits for bucket size (default=4: 16 Levels)\00", align 1
@query.return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"borderaverage\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"The average color of the specified border.\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"plug-in-borderaverage\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Set foreground to the average color of the image border\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Philipp Klaus\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Internet Access AG\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"1998\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"_Border Average...\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Info\00", align 1
@run.values = internal global [3 x %struct._GimpParam] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@borderaverage_data = internal global %struct.borderaverage_data { i32 3, i32 4 }, align 4
@borderaverage_thickness = internal global i32 3, align 4
@borderaverage_bucket_exponent = internal global i32 4, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"Border Average\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@borderaverage_dialog.labels = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)], align 16
@.str.33 = private unnamed_addr constant [15 x i8] c"border-average\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Borderaverage\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"gimp-border-average\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Border Size\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"_Thickness:\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Number of Colors\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"_Bucket size:\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 5, i32 1, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  %status = alloca i32, align 4
  %result_color = alloca %struct._GimpRGB, align 8
  %run_mode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_int326, align 4
  store i32 %3, i32* %image_ID, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %5 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %5)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %run_mode, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %do.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.borderaverage_data* @borderaverage_data to i8*))
  %7 = load i32, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 0), align 4
  store i32 %7, i32* @borderaverage_thickness, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 1), align 4
  store i32 %8, i32* @borderaverage_bucket_exponent, align 4
  %9 = load i32, i32* %image_ID, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @borderaverage_dialog(i32 %9, %struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 5
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.12
  store i32 1, i32* %status, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %sw.bb.12
  %12 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %12, 3
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end.14
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %14 = load i32, i32* %d_int3219, align 4
  store i32 %14, i32* @borderaverage_thickness, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %16 = load i32, i32* %d_int3222, align 4
  store i32 %16, i32* @borderaverage_bucket_exponent, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.end.14
  br label %sw.epilog

sw.bb.24:                                         ; preds = %do.end
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.borderaverage_data* @borderaverage_data to i8*))
  %17 = load i32, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 0), align 4
  store i32 %17, i32* @borderaverage_thickness, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 1), align 4
  store i32 %18, i32* @borderaverage_bucket_exponent, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %if.end.23, %if.end
  %19 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %19, 3
  br i1 %cmp26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %sw.epilog
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id, align 4
  %call28 = call i32 @gimp_drawable_is_rgb(i32 %21)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.27
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)) #4
  %call32 = call i32 @gimp_progress_init(i8* %call31)
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @borderaverage(%struct._GimpDrawable* %22, %struct._GimpRGB* %result_color)
  %23 = load i32, i32* %run_mode, align 4
  %cmp33 = icmp ne i32 %23, 1
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.30
  %call35 = call i32 @gimp_context_set_foreground(%struct._GimpRGB* %result_color)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.30
  %24 = load i32, i32* %run_mode, align 4
  %cmp37 = icmp eq i32 %24, 0
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %25 = load i32, i32* @borderaverage_thickness, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 0), align 4
  %26 = load i32, i32* @borderaverage_bucket_exponent, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.borderaverage_data, %struct.borderaverage_data* @borderaverage_data, i32 0, i32 1), align 4
  %call39 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.borderaverage_data* @borderaverage_data to i8*), i32 8)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.36
  br label %if.end.41

if.else:                                          ; preds = %if.then.27
  store i32 0, i32* %status, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %sw.epilog
  %27 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 3, i32* %27, align 4
  %28 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %28, align 8
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %29 = load i32, i32* %status, align 4
  store i32 %29, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 10, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %30 = bitcast %struct._GimpRGB* %result_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1, i32 0) to i8*), i8* %30, i64 32, i32 8, i1 false)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %31)
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
define internal i32 @borderaverage_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %size_entry = alloca %struct._GtkWidget*, align 8
  %unit = alloca i32, align 4
  %combo = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %run = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %labels = alloca [9 x i8*], align 16
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = bitcast [9 x i8*]* %labels to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x i8*]* @borderaverage_dialog.labels to i8*), i64 72, i32 16, i1 false)
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %6)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 12)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %12)
  %13 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 1, i32 1, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #4
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %hbox, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %24, %struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #4
  %call22 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call21)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %label, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_misc_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call23)
  %29 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %29, float 0.000000e+00, float 5.000000e-01)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call27 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call27, %struct._GtkSizeGroup** %group, align 8
  %35 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %38 = bitcast %struct._GtkSizeGroup* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load i32, i32* %image_ID.addr, align 4
  %call28 = call i32 @gimp_image_get_resolution(i32 %39, double* %xres, double* %yres)
  %40 = load i32, i32* %image_ID.addr, align 4
  %call29 = call i32 @gimp_image_get_unit(i32 %40)
  store i32 %call29, i32* %unit, align 4
  %41 = load i32, i32* %unit, align 4
  %call30 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 1, i32 1, i32 0, i32 4, i32 1)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %size_entry, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call31)
  %44 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_size_entry_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call33)
  %48 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %48, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_size_entry_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpSizeEntry*
  %52 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %51, i32 0, double %52, i32 1)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_size_entry_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call37)
  %55 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpSizeEntry*
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %56, i32 0, i32 1
  %57 = load i32, i32* %width, align 4
  %conv = uitofp i32 %57 to double
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %55, i32 0, double 0.000000e+00, double %conv)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_size_entry_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call39)
  %60 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpSizeEntry*
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %60, i32 0, double 1.000000e+00, double 2.560000e+02)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call41)
  %63 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %63, i32 0, i32 4)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call43)
  %66 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %66, i32 2, i32 12)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_size_entry_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call45)
  %69 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpSizeEntry*
  %70 = load i32, i32* @borderaverage_thickness, align 4
  %conv47 = sitofp i32 %70 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %69, i32 0, double %conv47)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @thickness_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0)) #4
  %call50 = call %struct._GtkWidget* @gimp_frame_new(i8* %call49)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %frame, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call51)
  %76 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %call53 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %hbox, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call54)
  %81 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %81, %struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %83)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0)) #4
  %call57 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %label, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_misc_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call58)
  %86 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %86, float 0.000000e+00, float 5.000000e-01)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call60)
  %89 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %89, %struct._GtkWidget* %90, i32 0, i32 0, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %92 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %92, %struct._GtkWidget* %93)
  %arraydecay = getelementptr inbounds [9 x i8*], [9 x i8*]* %labels, i32 0, i32 0
  %call62 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 9, i8** %arraydecay)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %combo, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_int_combo_box_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call63)
  %96 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpIntComboBox*
  %97 = load i32, i32* @borderaverage_bucket_exponent, align 4
  %call65 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %96, i32 %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %99 = bitcast %struct._GtkWidget* %98 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* @borderaverage_bucket_exponent to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call67)
  %102 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 0, i32 0, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_label_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call69)
  %107 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkLabel*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %107, %struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_dialog_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call71)
  %112 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpDialog*
  %call73 = call i32 @gimp_dialog_run(%struct._GimpDialog* %112)
  %cmp = icmp eq i32 %call73, -5
  %conv74 = zext i1 %cmp to i32
  store i32 %conv74, i32* %run, align 4
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %113)
  %114 = load i32, i32* %run, align 4
  ret i32 %114
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @borderaverage(%struct._GimpDrawable* %drawable, %struct._GimpRGB* %result) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %result.addr = alloca %struct._GimpRGB*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %bytes = alloca i32, align 4
  %max = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %buffer = alloca i8*, align 8
  %bucket_num = alloca i32, align 4
  %bucket_expo = alloca i32, align 4
  %bucket_rexpo = alloca i32, align 4
  %cube = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %param = alloca %struct.BorderAverageParam_t, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpRGB* %result, %struct._GimpRGB** %result.addr, align 8
  %0 = load i32, i32* @borderaverage_bucket_exponent, align 4
  store i32 %0, i32* %bucket_expo, align 4
  %1 = load i32, i32* %bucket_expo, align 4
  %sub = sub nsw i32 8, %1
  store i32 %sub, i32* %bucket_rexpo, align 4
  %2 = load i32, i32* %bucket_rexpo, align 4
  %mul = mul nsw i32 %2, 3
  %shl = shl i32 1, %mul
  %conv = sext i32 %shl to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %cube, align 8
  %cube1 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 5
  store i32* %3, i32** %cube1, align 8
  %4 = load i32, i32* %bucket_rexpo, align 4
  %shl2 = shl i32 1, %4
  store i32 %shl2, i32* %bucket_num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %bucket_num, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.16, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %bucket_num, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body.7, label %for.end.18

for.body.7:                                       ; preds = %for.cond.4
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %bucket_num, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %bucket_rexpo, align 4
  %shl12 = shl i32 %12, 1
  %shl13 = shl i32 %11, %shl12
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %bucket_rexpo, align 4
  %shl14 = shl i32 %13, %14
  %add = add nsw i32 %shl13, %shl14
  %15 = load i32, i32* %k, align 4
  %add15 = add nsw i32 %add, %15
  %idxprom = sext i32 %add15 to i64
  %16 = load i32*, i32** %cube, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond.4

for.end.18:                                       ; preds = %for.cond.4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %19 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id, align 4
  %call22 = call i32 @gimp_drawable_mask_bounds(i32 %21, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %22 = load i32, i32* %x1, align 4
  %x123 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 0
  store i32 %22, i32* %x123, align 4
  %23 = load i32, i32* %y1, align 4
  %y124 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 2
  store i32 %23, i32* %y124, align 4
  %24 = load i32, i32* %x2, align 4
  %x225 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 1
  store i32 %24, i32* %x225, align 4
  %25 = load i32, i32* %y2, align 4
  %y226 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 3
  store i32 %25, i32* %y226, align 4
  %26 = load i32, i32* %bucket_expo, align 4
  %bucket_expo27 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %param, i32 0, i32 4
  store i32 %26, i32* %bucket_expo27, align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 3
  %28 = load i32, i32* %bpp, align 4
  store i32 %28, i32* %bytes, align 4
  %29 = load i32, i32* %x2, align 4
  %30 = load i32, i32* %x1, align 4
  %sub28 = sub nsw i32 %29, %30
  %call29 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %sub28, %call29
  %add30 = add i32 %div, 1
  %mul31 = mul i32 2, %add30
  %conv32 = zext i32 %mul31 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv32)
  %31 = load i32, i32* %x2, align 4
  %32 = load i32, i32* %x1, align 4
  %sub33 = sub nsw i32 %31, %32
  %33 = load i32, i32* %bytes, align 4
  %mul34 = mul nsw i32 %sub33, %33
  %conv35 = sext i32 %mul34 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 1)
  store i8* %call36, i8** %buffer, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call37 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %34, i32 0)
  store %struct._GimpRgnIterator* %call37, %struct._GimpRgnIterator** %iter, align 8
  %35 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %36 = bitcast %struct.BorderAverageParam_t* %param to i8*
  call void @gimp_rgn_iterator_src(%struct._GimpRgnIterator* %35, void (i32, i32, i8*, i32, i8*)* @borderaverage_func, i8* %36)
  %37 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %37)
  store i32 0, i32* %max, align 4
  store i8 0, i8* %r, align 1
  store i8 0, i8* %g, align 1
  store i8 0, i8* %b, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.87, %for.end.21
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %bucket_num, align 4
  %cmp39 = icmp slt i32 %38, %39
  br i1 %cmp39, label %for.body.41, label %for.end.89

for.body.41:                                      ; preds = %for.cond.38
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.84, %for.body.41
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %bucket_num, align 4
  %cmp43 = icmp slt i32 %40, %41
  br i1 %cmp43, label %for.body.45, label %for.end.86

for.body.45:                                      ; preds = %for.cond.42
  store i32 0, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.81, %for.body.45
  %42 = load i32, i32* %k, align 4
  %43 = load i32, i32* %bucket_num, align 4
  %cmp47 = icmp slt i32 %42, %43
  br i1 %cmp47, label %for.body.49, label %for.end.83

for.body.49:                                      ; preds = %for.cond.46
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %bucket_rexpo, align 4
  %shl50 = shl i32 %45, 1
  %shl51 = shl i32 %44, %shl50
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %bucket_rexpo, align 4
  %shl52 = shl i32 %46, %47
  %add53 = add nsw i32 %shl51, %shl52
  %48 = load i32, i32* %k, align 4
  %add54 = add nsw i32 %add53, %48
  %idxprom55 = sext i32 %add54 to i64
  %49 = load i32*, i32** %cube, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %49, i64 %idxprom55
  %50 = load i32, i32* %arrayidx56, align 4
  %51 = load i32, i32* %max, align 4
  %cmp57 = icmp sgt i32 %50, %51
  br i1 %cmp57, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.49
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %bucket_rexpo, align 4
  %shl59 = shl i32 %53, 1
  %shl60 = shl i32 %52, %shl59
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %bucket_rexpo, align 4
  %shl61 = shl i32 %54, %55
  %add62 = add nsw i32 %shl60, %shl61
  %56 = load i32, i32* %k, align 4
  %add63 = add nsw i32 %add62, %56
  %idxprom64 = sext i32 %add63 to i64
  %57 = load i32*, i32** %cube, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %57, i64 %idxprom64
  %58 = load i32, i32* %arrayidx65, align 4
  store i32 %58, i32* %max, align 4
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %bucket_expo, align 4
  %shl66 = shl i32 %59, %60
  %61 = load i32, i32* %bucket_expo, align 4
  %sub67 = sub nsw i32 %61, 1
  %shl68 = shl i32 1, %sub67
  %add69 = add nsw i32 %shl66, %shl68
  %conv70 = trunc i32 %add69 to i8
  store i8 %conv70, i8* %r, align 1
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %bucket_expo, align 4
  %shl71 = shl i32 %62, %63
  %64 = load i32, i32* %bucket_expo, align 4
  %sub72 = sub nsw i32 %64, 1
  %shl73 = shl i32 1, %sub72
  %add74 = add nsw i32 %shl71, %shl73
  %conv75 = trunc i32 %add74 to i8
  store i8 %conv75, i8* %g, align 1
  %65 = load i32, i32* %k, align 4
  %66 = load i32, i32* %bucket_expo, align 4
  %shl76 = shl i32 %65, %66
  %67 = load i32, i32* %bucket_expo, align 4
  %sub77 = sub nsw i32 %67, 1
  %shl78 = shl i32 1, %sub77
  %add79 = add nsw i32 %shl76, %shl78
  %conv80 = trunc i32 %add79 to i8
  store i8 %conv80, i8* %b, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.49
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end
  %68 = load i32, i32* %k, align 4
  %inc82 = add nsw i32 %68, 1
  store i32 %inc82, i32* %k, align 4
  br label %for.cond.46

for.end.83:                                       ; preds = %for.cond.46
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %69 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %69, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond.42

for.end.86:                                       ; preds = %for.cond.42
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.86
  %70 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %70, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.38

for.end.89:                                       ; preds = %for.cond.38
  %71 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  %72 = load i8, i8* %r, align 1
  %73 = load i8, i8* %g, align 1
  %74 = load i8, i8* %b, align 1
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %71, i8 zeroext %72, i8 zeroext %73, i8 zeroext %74, i8 zeroext -1)
  %75 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %75)
  %76 = load i32*, i32** %cube, align 8
  %77 = bitcast i32* %76 to i8*
  call void @g_free(i8* %77)
  ret void
}

declare i32 @gimp_context_set_foreground(%struct._GimpRGB*) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare i32 @gimp_image_get_unit(i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @thickness_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  %conv = fptosi double %call2 to i32
  store i32 %conv, i32* @borderaverage_thickness, align 4
  ret void
}

declare %struct._GtkWidget* @gimp_int_combo_box_new_array(i32, i8**) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_src(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @borderaverage_func(i32 %x, i32 %y, i8* %src, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.BorderAverageParam_t*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.BorderAverageParam_t*
  store %struct.BorderAverageParam_t* %1, %struct.BorderAverageParam_t** %param, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %x1 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %3, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4
  %5 = load i32, i32* @borderaverage_thickness, align 4
  %add = add nsw i32 %4, %5
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %x.addr, align 4
  %7 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %x2 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %7, i32 0, i32 1
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* @borderaverage_thickness, align 4
  %sub = sub nsw i32 %8, %9
  %cmp1 = icmp sge i32 %6, %sub
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %y1 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %11, i32 0, i32 2
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* @borderaverage_thickness, align 4
  %add3 = add nsw i32 %12, %13
  %cmp4 = icmp slt i32 %10, %add3
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %14 = load i32, i32* %y.addr, align 4
  %15 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %y2 = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %15, i32 0, i32 3
  %16 = load i32, i32* %y2, align 4
  %17 = load i32, i32* @borderaverage_thickness, align 4
  %sub6 = sub nsw i32 %16, %17
  %cmp7 = icmp sge i32 %14, %sub6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  %18 = load i32, i32* %bpp.addr, align 4
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %cube = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %20, i32 0, i32 5
  %21 = load i32*, i32** %cube, align 8
  %22 = load %struct.BorderAverageParam_t*, %struct.BorderAverageParam_t** %param, align 8
  %bucket_expo = getelementptr inbounds %struct.BorderAverageParam_t, %struct.BorderAverageParam_t* %22, i32 0, i32 4
  %23 = load i32, i32* %bucket_expo, align 4
  call void @add_new_color(i32 %18, i8* %19, i32* %21, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  ret void
}

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @add_new_color(i32 %bytes, i8* %buffer, i32* %cube, i32 %bucket_expo) #0 {
entry:
  %bytes.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %cube.addr = alloca i32*, align 8
  %bucket_expo.addr = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %bucket_rexpo = alloca i32, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32* %cube, i32** %cube.addr, align 8
  store i32 %bucket_expo, i32* %bucket_expo.addr, align 4
  %0 = load i32, i32* %bucket_expo.addr, align 4
  %sub = sub nsw i32 8, %0
  store i32 %sub, i32* %bucket_rexpo, align 4
  %1 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %bucket_expo.addr, align 4
  %shr = ashr i32 %conv, %3
  %conv1 = trunc i32 %shr to i8
  store i8 %conv1, i8* %r, align 1
  %4 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i32, i32* %bucket_expo.addr, align 4
  %shr5 = ashr i32 %conv4, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr5, %cond.true ], [ 0, %cond.false ]
  %conv6 = trunc i32 %cond to i8
  store i8 %conv6, i8* %g, align 1
  %8 = load i32, i32* %bytes.addr, align 4
  %cmp7 = icmp sgt i32 %8, 2
  br i1 %cmp7, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %cond.end
  %9 = load i8*, i8** %buffer.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %11 = load i32, i32* %bucket_expo.addr, align 4
  %shr12 = ashr i32 %conv11, %11
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.9
  %cond15 = phi i32 [ %shr12, %cond.true.9 ], [ 0, %cond.false.13 ]
  %conv16 = trunc i32 %cond15 to i8
  store i8 %conv16, i8* %b, align 1
  %12 = load i8, i8* %r, align 1
  %conv17 = zext i8 %12 to i32
  %13 = load i32, i32* %bucket_rexpo, align 4
  %shl = shl i32 %13, 1
  %shl18 = shl i32 %conv17, %shl
  %14 = load i8, i8* %g, align 1
  %conv19 = zext i8 %14 to i32
  %15 = load i32, i32* %bucket_rexpo, align 4
  %shl20 = shl i32 %conv19, %15
  %add = add nsw i32 %shl18, %shl20
  %16 = load i8, i8* %b, align 1
  %conv21 = zext i8 %16 to i32
  %add22 = add nsw i32 %add, %conv21
  %idxprom = sext i32 %add22 to i64
  %17 = load i32*, i32** %cube.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx23, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %arrayidx23, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
