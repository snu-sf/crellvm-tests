; ModuleID = './plug-ins/common/align-layers.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ValueType = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct.AlignData = type { i32, i32, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Input drawable (not used)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"link-after-alignment\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Link the visible layers after alignment { TRUE, FALSE }\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"use-bottom\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"use the bottom layer as the base of alignment { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"plug-in-align-layers\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Align all visible layers of the image\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Align visible layers\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Shuji Narazaki <narazaki@InetQ.or.jp>\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Shuji Narazaki\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Align Visi_ble Layers...\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"RGB*,GRAY*,INDEXED*\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"<Image>/Image/Arrange\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"There are not enough layers to align.\00", align 1
@VALS = internal global %struct.ValueType { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 10 }, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"align-layers\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Align Visible Layers\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"gimp-align-layers\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"align-style\04None\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Collect\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Fill (left to right)\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Fill (right to left)\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Snap to grid\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"_Horizontal style:\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Left edge\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Right edge\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Ho_rizontal base:\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Fill (top to bottom)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Fill (bottom to top)\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"_Vertical style:\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Top edge\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Bottom edge\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Ver_tical base:\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"_Grid size:\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"_Ignore the bottom layer even if visible\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"_Use the (invisible) bottom layer as the base\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %image_id = alloca i32, align 4
  %layer_num = alloca i32, align 4
  %layers = alloca i32*, align 8
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
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int323 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int323, align 4
  store i32 %3, i32* %image_id, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #4
  %call5 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %call6 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end
  %8 = load i32, i32* %image_id, align 4
  %call7 = call i32* @gimp_image_get_layers(i32 %8, i32* %layer_num)
  store i32* %call7, i32** %layers, align 8
  %9 = load i32*, i32** %layers, align 8
  %10 = load i32, i32* %layer_num, align 4
  %call8 = call i32 @align_layers_count_visibles_layers(i32* %9, i32 %10)
  store i32 %call8, i32* %layer_num, align 4
  %11 = load i32*, i32** %layers, align 8
  %12 = bitcast i32* %11 to i8*
  call void @g_free(i8* %12)
  %13 = load i32, i32* %layer_num, align 4
  %cmp = icmp slt i32 %13, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %14, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0)) #4
  store i8* %call9, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %return

if.end:                                           ; preds = %sw.bb
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*))
  %15 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %cmp11 = icmp sgt i32 %15, 1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %call12 = call i32 @align_layers_dialog()
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %cond.end
  br label %return

if.end.14:                                        ; preds = %cond.end
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %call17 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.16, %sw.bb.15, %if.end.14
  %17 = load i32, i32* %image_id, align 4
  %call18 = call i32 @align_layers(i32 %17)
  store i32 %call18, i32* %status, align 4
  %18 = load i32, i32* %run_mode, align 4
  %cmp19 = icmp ne i32 %18, 1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.epilog
  %call21 = call i32 @gimp_displays_flush()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.epilog
  %19 = load i32, i32* %run_mode, align 4
  %cmp23 = icmp eq i32 %19, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.22
  %20 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %20, 3
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %call26 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.ValueType* @VALS to i8*), i32 28)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.22
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.27, %if.then.13, %if.then
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

declare i32* @gimp_image_get_layers(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @align_layers_count_visibles_layers(i32* %layers, i32 %length) #0 {
entry:
  %layers.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %item = alloca i32, align 4
  %children = alloca i32*, align 8
  %children_num = alloca i32, align 4
  store i32* %layers, i32** %layers.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %layers.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %item, align 4
  %5 = load i32, i32* %item, align 4
  %call = call i32 @gimp_item_get_visible(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %item, align 4
  %call1 = call i32 @gimp_item_is_group(i32 %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %item, align 4
  %call4 = call i32* @gimp_item_get_children(i32 %7, i32* %children_num)
  store i32* %call4, i32** %children, align 8
  %8 = load i32*, i32** %children, align 8
  %9 = load i32, i32* %children_num, align 4
  %call5 = call i32 @align_layers_count_visibles_layers(i32* %8, i32 %9)
  %10 = load i32, i32* %count, align 4
  %add = add nsw i32 %10, %call5
  store i32 %add, i32* %count, align 4
  %11 = load i32*, i32** %children, align 8
  %12 = bitcast i32* %11 to i8*
  call void @g_free(i8* %12)
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %item, align 4
  %call6 = call i32 @gimp_item_is_layer(i32 %13)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %14 = load i32, i32* %count, align 4
  %add9 = add nsw i32 %14, 1
  store i32 %add9, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %count, align 4
  ret i32 %16
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @align_layers_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
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
  %call6 = call %struct._GtkWidget* @gtk_table_new(i32 7, i32 3, i32 0)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %table, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %8, i32 6)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %11, i32 6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i64 12)
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #4
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0)) #4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #4
  %call23 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call18, i32 0, i8* %call19, i32 1, i8* %call20, i32 2, i8* %call21, i32 3, i8* %call22, i32 4, i8* null)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %combo, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_int_combo_box_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call24)
  %24 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpIntComboBox*
  %25 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %call26 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %24, i32 %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (%struct.ValueType* @VALS to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0)) #4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call31 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %30, i32 0, i32 0, i8* %call30, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %31, i32 2, i32 0)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)) #4
  %call35 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call32, i32 0, i8* %call33, i32 1, i8* %call34, i32 2, i8* null)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %combo, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_int_combo_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call36)
  %34 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpIntComboBox*
  %35 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  %call38 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %34, i32 %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call40)
  %40 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0)) #4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call43 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %40, i32 0, i32 1, i8* %call42, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %41, i32 2, i32 0)
  %call44 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i64 12)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #4
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0)) #4
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0)) #4
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #4
  %call49 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call44, i32 0, i8* %call45, i32 1, i8* %call46, i32 2, i8* %call47, i32 3, i8* %call48, i32 4, i8* null)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %combo, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_int_combo_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call50)
  %44 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpIntComboBox*
  %45 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %call52 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %44, i32 %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call54)
  %50 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0)) #4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call57 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %50, i32 0, i32 2, i8* %call56, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %51, i32 2, i32 0)
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #4
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #4
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #4
  %call61 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call58, i32 0, i8* %call59, i32 1, i8* %call60, i32 2, i8* null)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %combo, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_int_combo_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call62)
  %54 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpIntComboBox*
  %55 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  %call64 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %54, i32 %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call66)
  %60 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)) #4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call69 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %60, i32 0, i32 3, i8* %call68, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %61, i32 2, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call70)
  %64 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #4
  %65 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %conv = sitofp i32 %65 to double
  %call73 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %64, i32 0, i32 4, i8* %call72, i32 150, i32 0, double %conv, double 1.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call73, %struct._GtkObject** %adj, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0)) #4
  %call76 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call75)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %toggle, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_toggle_button_get_type() #5
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call77)
  %70 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkToggleButton*
  %71 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %70, i32 %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call79)
  %74 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %74, %struct._GtkWidget* %75, i32 0, i32 3, i32 5, i32 6)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0)) #4
  %call83 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call82)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %toggle, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_toggle_button_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call84)
  %81 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkToggleButton*
  %82 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %81, i32 %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_table_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call86)
  %85 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkTable*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %85, %struct._GtkWidget* %86, i32 0, i32 3, i32 6, i32 7)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_dialog_get_type() #5
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call89)
  %93 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpDialog*
  %call91 = call i32 @gimp_dialog_run(%struct._GimpDialog* %93)
  %cmp = icmp eq i32 %call91, -5
  %conv92 = zext i1 %cmp to i32
  store i32 %conv92, i32* %run, align 4
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %94)
  %95 = load i32, i32* %run, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @align_layers(i32 %image_id) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %layer_num = alloca i32, align 4
  %layers = alloca i32*, align 8
  %background = alloca i32, align 4
  %data = alloca %struct.AlignData, align 4
  %coerce = alloca %struct.AlignData, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 0, i32* %layer_num, align 4
  store i32* null, i32** %layers, align 8
  store i32 0, i32* %background, align 4
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32* @align_layers_spread_image(i32 %0, i32* %layer_num)
  store i32* %call, i32** %layers, align 8
  %1 = load i32, i32* %layer_num, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %layers, align 8
  %3 = bitcast i32* %2 to i8*
  call void @g_free(i8* %3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %image_id.addr, align 4
  %call1 = call i32 @align_layers_find_background(i32 %4)
  store i32 %call1, i32* %background, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 4), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %background, align 4
  %7 = load i32, i32* %layer_num, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp eq i32 %6, %9
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %layer_num, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %layer_num, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %11 = load i32*, i32** %layers, align 8
  %12 = load i32, i32* %layer_num, align 4
  %13 = load i32, i32* %background, align 4
  %call5 = call { i64, i64 } @align_layers_gather_data(i32* %11, i32 %12, i32 %13)
  %14 = bitcast %struct.AlignData* %coerce to { i64, i64 }*
  %15 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %call5, 0
  store i64 %16, i64* %15, align 4
  %17 = getelementptr { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %call5, 1
  store i64 %18, i64* %17, align 4
  %19 = bitcast %struct.AlignData* %data to i8*
  %20 = bitcast %struct.AlignData* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 4, i1 false)
  %21 = load i32, i32* %image_id.addr, align 4
  %call6 = call i32 @gimp_image_undo_group_start(i32 %21)
  %22 = load i32*, i32** %layers, align 8
  %23 = load i32, i32* %layer_num, align 4
  %24 = bitcast %struct.AlignData* %data to { i64, i64 }*
  %25 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 1
  %27 = getelementptr { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 1
  call void @align_layers_perform_alignment(i32* %22, i32 %23, i64 %26, i64 %28)
  %29 = load i32, i32* %image_id.addr, align 4
  %call7 = call i32 @gimp_image_undo_group_end(i32 %29)
  %30 = load i32*, i32** %layers, align 8
  %31 = bitcast i32* %30 to i8*
  call void @g_free(i8* %31)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_item_get_visible(i32) #1

declare i32 @gimp_item_is_group(i32) #1

declare i32* @gimp_item_get_children(i32, i32*) #1

declare i32 @gimp_item_is_layer(i32) #1

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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32* @align_layers_spread_image(i32 %image_id, i32* %layer_num) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %layer_num.addr = alloca i32*, align 8
  %layers = alloca i32*, align 8
  %layers_array = alloca i32*, align 8
  %layer_num_loc = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32* %layer_num, i32** %layer_num.addr, align 8
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %layer_num_loc)
  store i32* %call, i32** %layers, align 8
  %1 = load i32*, i32** %layers, align 8
  %2 = load i32, i32* %layer_num_loc, align 4
  %call1 = call i32 @align_layers_count_visibles_layers(i32* %1, i32 %2)
  %3 = load i32*, i32** %layer_num.addr, align 8
  store i32 %call1, i32* %3, align 4
  %4 = load i32*, i32** %layer_num.addr, align 8
  %5 = load i32, i32* %4, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 4, %conv
  %call2 = call noalias i8* @g_malloc(i64 %mul)
  %6 = bitcast i8* %call2 to i32*
  store i32* %6, i32** %layers_array, align 8
  %7 = load i32*, i32** %layers, align 8
  %8 = load i32, i32* %layer_num_loc, align 4
  %9 = load i32*, i32** %layers_array, align 8
  %call3 = call i32 @align_layers_spread_visibles_layers(i32* %7, i32 %8, i32* %9)
  %10 = load i32*, i32** %layers, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load i32*, i32** %layers_array, align 8
  ret i32* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @align_layers_find_background(i32 %image_id) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %layers = alloca i32*, align 8
  %layers_num = alloca i32, align 4
  %background = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load i32, i32* %image_id.addr, align 4
  %call = call i32* @gimp_image_get_layers(i32 %0, i32* %layers_num)
  store i32* %call, i32** %layers, align 8
  %1 = load i32*, i32** %layers, align 8
  %2 = load i32, i32* %layers_num, align 4
  %call1 = call i32 @align_layers_find_last_layer(i32* %1, i32 %2, i32* %found)
  store i32 %call1, i32* %background, align 4
  %3 = load i32*, i32** %layers, align 8
  %4 = bitcast i32* %3 to i8*
  call void @g_free(i8* %4)
  %5 = load i32, i32* %background, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @align_layers_gather_data(i32* %layers, i32 %layer_num, i32 %background) #0 {
entry:
  %retval = alloca %struct.AlignData, align 4
  %layers.addr = alloca i32*, align 8
  %layer_num.addr = alloca i32, align 4
  %background.addr = alloca i32, align 4
  %data = alloca %struct.AlignData, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %index = alloca i32, align 4
  %orig_x = alloca i32, align 4
  %orig_y = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store i32* %layers, i32** %layers.addr, align 8
  store i32 %layer_num, i32* %layer_num.addr, align 4
  store i32 %background, i32* %background.addr, align 4
  store i32 2147483647, i32* %min_x, align 4
  store i32 2147483647, i32* %min_y, align 4
  store i32 -2147483648, i32* %max_x, align 4
  store i32 -2147483648, i32* %max_y, align 4
  store i32 0, i32* %orig_x, align 4
  store i32 0, i32* %orig_y, align 4
  store i32 0, i32* %offset_x, align 4
  store i32 0, i32* %offset_y, align 4
  %step_x = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 0
  store i32 0, i32* %step_x, align 4
  %step_y = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 1
  store i32 0, i32* %step_y, align 4
  %base_x = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  store i32 0, i32* %base_x, align 4
  %base_y = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  store i32 0, i32* %base_y, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4
  %1 = load i32, i32* %layer_num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %index, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %layers.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 @gimp_drawable_offsets(i32 %4, i32* %orig_x, i32* %orig_y)
  %5 = load i32, i32* %index, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %layers.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @align_layers_get_align_offsets(i32 %7, i32* %offset_x, i32* %offset_y)
  %8 = load i32, i32* %offset_x, align 4
  %9 = load i32, i32* %orig_x, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %orig_x, align 4
  %10 = load i32, i32* %offset_y, align 4
  %11 = load i32, i32* %orig_y, align 4
  %add3 = add nsw i32 %11, %10
  store i32 %add3, i32* %orig_y, align 4
  %12 = load i32, i32* %min_x, align 4
  %13 = load i32, i32* %orig_x, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %min_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %orig_x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %min_x, align 4
  %16 = load i32, i32* %max_x, align 4
  %17 = load i32, i32* %orig_x, align 4
  %cmp5 = icmp sgt i32 %16, %17
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end
  %18 = load i32, i32* %max_x, align 4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %19 = load i32, i32* %orig_x, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ %18, %cond.true.6 ], [ %19, %cond.false.7 ]
  store i32 %cond9, i32* %max_x, align 4
  %20 = load i32, i32* %min_y, align 4
  %21 = load i32, i32* %orig_y, align 4
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.8
  %22 = load i32, i32* %min_y, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end.8
  %23 = load i32, i32* %orig_y, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %22, %cond.true.11 ], [ %23, %cond.false.12 ]
  store i32 %cond14, i32* %min_y, align 4
  %24 = load i32, i32* %max_y, align 4
  %25 = load i32, i32* %orig_y, align 4
  %cmp15 = icmp sgt i32 %24, %25
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end.13
  %26 = load i32, i32* %max_y, align 4
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end.13
  %27 = load i32, i32* %orig_y, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i32 [ %26, %cond.true.16 ], [ %27, %cond.false.17 ]
  store i32 %cond19, i32* %max_y, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.18
  %28 = load i32, i32* %index, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %30 = load i32, i32* %background.addr, align 4
  %call20 = call i32 @gimp_drawable_offsets(i32 %30, i32* %orig_x, i32* %orig_y)
  %31 = load i32, i32* %background.addr, align 4
  call void @align_layers_get_align_offsets(i32 %31, i32* %offset_x, i32* %offset_y)
  %32 = load i32, i32* %offset_x, align 4
  %33 = load i32, i32* %orig_x, align 4
  %add21 = add nsw i32 %33, %32
  store i32 %add21, i32* %orig_x, align 4
  %34 = load i32, i32* %offset_y, align 4
  %35 = load i32, i32* %orig_y, align 4
  %add22 = add nsw i32 %35, %34
  store i32 %add22, i32* %orig_y, align 4
  %36 = load i32, i32* %orig_x, align 4
  store i32 %36, i32* %min_x, align 4
  %base_x23 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  store i32 %36, i32* %base_x23, align 4
  %37 = load i32, i32* %orig_y, align 4
  store i32 %37, i32* %min_y, align 4
  %base_y24 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  store i32 %37, i32* %base_y24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %38 = load i32, i32* %layer_num.addr, align 4
  %cmp25 = icmp sgt i32 %38, 1
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end
  %39 = load i32, i32* %max_x, align 4
  %40 = load i32, i32* %min_x, align 4
  %sub = sub nsw i32 %39, %40
  %41 = load i32, i32* %layer_num.addr, align 4
  %sub27 = sub nsw i32 %41, 1
  %div = sdiv i32 %sub, %sub27
  %step_x28 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 0
  store i32 %div, i32* %step_x28, align 4
  %42 = load i32, i32* %max_y, align 4
  %43 = load i32, i32* %min_y, align 4
  %sub29 = sub nsw i32 %42, %43
  %44 = load i32, i32* %layer_num.addr, align 4
  %sub30 = sub nsw i32 %44, 1
  %div31 = sdiv i32 %sub29, %sub30
  %step_y32 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 1
  store i32 %div31, i32* %step_y32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %if.end
  %45 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %cmp34 = icmp eq i32 %45, 2
  br i1 %cmp34, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %46 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  %cmp35 = icmp eq i32 %46, 3
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.33
  %47 = load i32, i32* %min_x, align 4
  %base_x37 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  store i32 %47, i32* %base_x37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %lor.lhs.false
  %48 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %cmp39 = icmp eq i32 %48, 2
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.38
  %49 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  %cmp41 = icmp eq i32 %49, 3
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %lor.lhs.false.40, %if.end.38
  %50 = load i32, i32* %min_y, align 4
  %base_y43 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  store i32 %50, i32* %base_y43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %lor.lhs.false.40
  %51 = bitcast %struct.AlignData* %retval to i8*
  %52 = bitcast %struct.AlignData* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 4, i1 false)
  %53 = bitcast %struct.AlignData* %retval to { i64, i64 }*
  %54 = load { i64, i64 }, { i64, i64 }* %53, align 4
  ret { i64, i64 } %54
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_image_undo_group_start(i32) #1

; Function Attrs: nounwind uwtable
define internal void @align_layers_perform_alignment(i32* %layers, i32 %layer_num, i64 %data.coerce0, i64 %data.coerce1) #0 {
entry:
  %data = alloca %struct.AlignData, align 8
  %layers.addr = alloca i32*, align 8
  %layer_num.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %orig_x = alloca i32, align 4
  %orig_y = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %0 = bitcast %struct.AlignData* %data to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %data.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %data.coerce1, i64* %2
  store i32* %layers, i32** %layers.addr, align 8
  store i32 %layer_num, i32* %layer_num.addr, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %index, align 4
  %4 = load i32, i32* %layer_num.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %5 = load i32, i32* %index, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %layers.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call = call i32 @gimp_drawable_offsets(i32 %7, i32* %orig_x, i32* %orig_y)
  %8 = load i32, i32* %index, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i32*, i32** %layers.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  call void @align_layers_get_align_offsets(i32 %10, i32* %offset_x, i32* %offset_y)
  %11 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 0), align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %for.body
  %12 = load i32, i32* %orig_x, align 4
  store i32 %12, i32* %x, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %base_x = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  %13 = load i32, i32* %base_x, align 4
  %14 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %13, %14
  store i32 %sub, i32* %x, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %base_x5 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  %15 = load i32, i32* %base_x5, align 4
  %16 = load i32, i32* %index, align 4
  %step_x = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 0
  %17 = load i32, i32* %step_x, align 4
  %mul = mul nsw i32 %16, %17
  %add = add nsw i32 %15, %mul
  %18 = load i32, i32* %offset_x, align 4
  %sub6 = sub nsw i32 %add, %18
  store i32 %sub6, i32* %x, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %base_x8 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 2
  %19 = load i32, i32* %base_x8, align 4
  %20 = load i32, i32* %layer_num.addr, align 4
  %21 = load i32, i32* %index, align 4
  %sub9 = sub nsw i32 %20, %21
  %sub10 = sub nsw i32 %sub9, 1
  %step_x11 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 0
  %22 = load i32, i32* %step_x11, align 4
  %mul12 = mul nsw i32 %sub10, %22
  %add13 = add nsw i32 %19, %mul12
  %23 = load i32, i32* %offset_x, align 4
  %sub14 = sub nsw i32 %add13, %23
  store i32 %sub14, i32* %x, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %24 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %25 = load i32, i32* %orig_x, align 4
  %26 = load i32, i32* %offset_x, align 4
  %add16 = add nsw i32 %25, %26
  %27 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %div = sdiv i32 %27, 2
  %add17 = add nsw i32 %add16, %div
  %28 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %div18 = sdiv i32 %add17, %28
  %mul19 = mul nsw i32 %24, %div18
  %29 = load i32, i32* %offset_x, align 4
  %sub20 = sub nsw i32 %mul19, %29
  store i32 %sub20, i32* %x, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.15, %sw.bb.7, %sw.bb.4, %sw.bb.3, %sw.bb
  %30 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 2), align 4
  switch i32 %30, label %sw.epilog.44 [
    i32 0, label %sw.bb.21
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.37
  ]

sw.bb.21:                                         ; preds = %sw.epilog
  %31 = load i32, i32* %orig_y, align 4
  store i32 %31, i32* %y, align 4
  br label %sw.epilog.44

sw.bb.22:                                         ; preds = %sw.epilog
  %base_y = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  %32 = load i32, i32* %base_y, align 4
  %33 = load i32, i32* %offset_y, align 4
  %sub23 = sub nsw i32 %32, %33
  store i32 %sub23, i32* %y, align 4
  br label %sw.epilog.44

sw.bb.24:                                         ; preds = %sw.epilog
  %base_y25 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  %34 = load i32, i32* %base_y25, align 4
  %35 = load i32, i32* %index, align 4
  %step_y = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 1
  %36 = load i32, i32* %step_y, align 4
  %mul26 = mul nsw i32 %35, %36
  %add27 = add nsw i32 %34, %mul26
  %37 = load i32, i32* %offset_y, align 4
  %sub28 = sub nsw i32 %add27, %37
  store i32 %sub28, i32* %y, align 4
  br label %sw.epilog.44

sw.bb.29:                                         ; preds = %sw.epilog
  %base_y30 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 3
  %38 = load i32, i32* %base_y30, align 4
  %39 = load i32, i32* %layer_num.addr, align 4
  %40 = load i32, i32* %index, align 4
  %sub31 = sub nsw i32 %39, %40
  %sub32 = sub nsw i32 %sub31, 1
  %step_y33 = getelementptr inbounds %struct.AlignData, %struct.AlignData* %data, i32 0, i32 1
  %41 = load i32, i32* %step_y33, align 4
  %mul34 = mul nsw i32 %sub32, %41
  %add35 = add nsw i32 %38, %mul34
  %42 = load i32, i32* %offset_y, align 4
  %sub36 = sub nsw i32 %add35, %42
  store i32 %sub36, i32* %y, align 4
  br label %sw.epilog.44

sw.bb.37:                                         ; preds = %sw.epilog
  %43 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %44 = load i32, i32* %orig_y, align 4
  %45 = load i32, i32* %offset_y, align 4
  %add38 = add nsw i32 %44, %45
  %46 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %div39 = sdiv i32 %46, 2
  %add40 = add nsw i32 %add38, %div39
  %47 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 6), align 4
  %div41 = sdiv i32 %add40, %47
  %mul42 = mul nsw i32 %43, %div41
  %48 = load i32, i32* %offset_y, align 4
  %sub43 = sub nsw i32 %mul42, %48
  store i32 %sub43, i32* %y, align 4
  br label %sw.epilog.44

sw.epilog.44:                                     ; preds = %sw.epilog, %sw.bb.37, %sw.bb.29, %sw.bb.24, %sw.bb.22, %sw.bb.21
  %49 = load i32, i32* %index, align 4
  %idxprom45 = sext i32 %49 to i64
  %50 = load i32*, i32** %layers.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %50, i64 %idxprom45
  %51 = load i32, i32* %arrayidx46, align 4
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %y, align 4
  %call47 = call i32 @gimp_layer_set_offsets(i32 %51, i32 %52, i32 %53)
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.44
  %54 = load i32, i32* %index, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_image_undo_group_end(i32) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @align_layers_spread_visibles_layers(i32* %layers, i32 %layers_num, i32* %layers_array) #0 {
entry:
  %layers.addr = alloca i32*, align 8
  %layers_num.addr = alloca i32, align 4
  %layers_array.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %item = alloca i32, align 4
  %children = alloca i32*, align 8
  %children_num = alloca i32, align 4
  store i32* %layers, i32** %layers.addr, align 8
  store i32 %layers_num, i32* %layers_num.addr, align 4
  store i32* %layers_array, i32** %layers_array.addr, align 8
  store i32 0, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %layers_num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %layers.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %item, align 4
  %5 = load i32, i32* %item, align 4
  %call = call i32 @gimp_item_get_visible(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %item, align 4
  %call1 = call i32 @gimp_item_is_group(i32 %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %item, align 4
  %call4 = call i32* @gimp_item_get_children(i32 %7, i32* %children_num)
  store i32* %call4, i32** %children, align 8
  %8 = load i32*, i32** %children, align 8
  %9 = load i32, i32* %children_num, align 4
  %10 = load i32, i32* %index, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %layers_array.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %call7 = call i32 @align_layers_spread_visibles_layers(i32* %8, i32 %9, i32* %arrayidx6)
  %12 = load i32, i32* %index, align 4
  %add = add nsw i32 %12, %call7
  store i32 %add, i32* %index, align 4
  %13 = load i32*, i32** %children, align 8
  %14 = bitcast i32* %13 to i8*
  call void @g_free(i8* %14)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %item, align 4
  %call8 = call i32 @gimp_item_is_layer(i32 %15)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %16 = load i32, i32* %item, align 4
  %17 = load i32, i32* %index, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32*, i32** %layers_array.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  store i32 %16, i32* %arrayidx12, align 4
  %19 = load i32, i32* %index, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.3
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %index, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @align_layers_find_last_layer(i32* %layers, i32 %layers_num, i32* %found) #0 {
entry:
  %retval = alloca i32, align 4
  %layers.addr = alloca i32*, align 8
  %layers_num.addr = alloca i32, align 4
  %found.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %item = alloca i32, align 4
  %children = alloca i32*, align 8
  %children_num = alloca i32, align 4
  %last_layer = alloca i32, align 4
  store i32* %layers, i32** %layers.addr, align 8
  store i32 %layers_num, i32* %layers_num.addr, align 4
  store i32* %found, i32** %found.addr, align 8
  %0 = load i32, i32* %layers_num.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %layers.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %item, align 4
  %5 = load i32, i32* %item, align 4
  %call = call i32 @gimp_item_is_group(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %item, align 4
  %call1 = call i32* @gimp_item_get_children(i32 %6, i32* %children_num)
  store i32* %call1, i32** %children, align 8
  %7 = load i32*, i32** %children, align 8
  %8 = load i32, i32* %children_num, align 4
  %9 = load i32*, i32** %found.addr, align 8
  %call2 = call i32 @align_layers_find_last_layer(i32* %7, i32 %8, i32* %9)
  store i32 %call2, i32* %last_layer, align 4
  %10 = load i32*, i32** %children, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  %12 = load i32*, i32** %found.addr, align 8
  %13 = load i32, i32* %12, align 4
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %14 = load i32, i32* %last_layer, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %item, align 4
  %call5 = call i32 @gimp_item_is_layer(i32 %15)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %16 = load i32*, i32** %found.addr, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %item, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then.4
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @align_layers_get_align_offsets(i32 %drawable_id, i32* %x, i32* %y) #0 {
entry:
  %drawable_id.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %layer = alloca %struct._GimpDrawable*, align 8
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %layer, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 1), align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %2, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %div = udiv i32 %4, 2
  %5 = load i32*, i32** %x.addr, align 8
  store i32 %div, i32* %5, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  %8 = load i32*, i32** %x.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load i32*, i32** %x.addr, align 8
  store i32 0, i32* %9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %10 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @VALS, i32 0, i32 3), align 4
  switch i32 %10, label %sw.default.9 [
    i32 0, label %sw.bb.4
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.7
  ]

sw.bb.4:                                          ; preds = %sw.epilog
  %11 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %11, align 4
  br label %sw.epilog.10

sw.bb.5:                                          ; preds = %sw.epilog
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  %div6 = udiv i32 %13, 2
  %14 = load i32*, i32** %y.addr, align 8
  store i32 %div6, i32* %14, align 4
  br label %sw.epilog.10

sw.bb.7:                                          ; preds = %sw.epilog
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height8, align 4
  %17 = load i32*, i32** %y.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %sw.epilog.10

sw.default.9:                                     ; preds = %sw.epilog
  %18 = load i32*, i32** %y.addr, align 8
  store i32 0, i32* %18, align 4
  br label %sw.epilog.10

sw.epilog.10:                                     ; preds = %sw.default.9, %sw.bb.7, %sw.bb.5, %sw.bb.4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %layer, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %19)
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
