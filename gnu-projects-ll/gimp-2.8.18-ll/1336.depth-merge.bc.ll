; ModuleID = './plug-ins/common/depth-merge.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._DepthMerge = type { %struct._DepthMergeInterface*, %struct._DepthMergeParams, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct._GimpDrawable*, i32, i32, i32, i32, i32 }
%struct._DepthMergeInterface = type { i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8*, i8*, i8*, i8* }
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
%struct._DepthMergeParams = type { i32, i32, i32, i32, i32, float, float, float, float }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [11 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"source1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Source 1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"source2\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Source 2\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"depthMap1\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Depth map 1\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"depthMap2\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Depth map 2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"overlap\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Overlap\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Depth relative offset\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"scale1\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Depth relative scale 1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"scale2\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Depth relative scale 2\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"plug-in-depth-merge\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Combine two images using depth maps (z-buffers)\00", align 1
@.str.24 = private unnamed_addr constant [197 x i8] c"Taking as input two full-color, full-alpha images and two corresponding grayscale depth maps, this plug-in combines the images based on which is closer (has a lower depth map value) at each point.\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Sean Cier\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"August 1998\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"_Depth Merge...\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Combine\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"depth-merge\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Depth Merge\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"gimp-depth-merge\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Source 1:\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Depth map:\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Source 2:\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"O_verlap:\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"O_ffset:\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Sc_ale 1:\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Sca_le 2:\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Depth-merging\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 11, i32 0, %struct._GimpParamDef* getelementptr inbounds ([11 x %struct._GimpParamDef], [11 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %numParams, %struct._GimpParam* %param, i32* %numReturnVals, %struct._GimpParam** %returnVals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %numParams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %numReturnVals.addr = alloca i32*, align 8
  %returnVals.addr = alloca %struct._GimpParam**, align 8
  %runMode = alloca i32, align 4
  %status = alloca i32, align 4
  %dm = alloca %struct._DepthMerge, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %numParams, i32* %numParams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %numReturnVals, i32** %numReturnVals.addr, align 8
  store %struct._GimpParam** %returnVals, %struct._GimpParam*** %returnVals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %runMode, align 4
  store i32 3, i32* %status, align 4
  %2 = load i32*, i32** %numReturnVals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %returnVals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  %4 = load i32, i32* %runMode, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %do.end
  call void @DepthMerge_initParams(%struct._DepthMerge* %dm)
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %5 = bitcast %struct._DepthMergeParams* %params to i8*
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %5)
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %params7 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %result = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params7, i32 0, i32 0
  store i32 %7, i32* %result, align 4
  %call8 = call i32 @DepthMerge_construct(%struct._DepthMerge* %dm)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  %call9 = call i32 @DepthMerge_dialog(%struct._DepthMerge* %dm)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  call void @DepthMerge_initParams(%struct._DepthMerge* %dm)
  %8 = load i32, i32* %numParams.addr, align 4
  %cmp = icmp ne i32 %8, 11
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %sw.bb.13
  store i32 1, i32* %status, align 4
  br label %if.end.54

if.else:                                          ; preds = %sw.bb.13
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 2
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_drawable17 = bitcast %union._GimpParamData* %data16 to i32*
  %10 = load i32, i32* %d_drawable17, align 4
  %params18 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %result19 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params18, i32 0, i32 0
  store i32 %10, i32* %result19, align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_drawable22 = bitcast %union._GimpParamData* %data21 to i32*
  %12 = load i32, i32* %d_drawable22, align 4
  %params23 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %source1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params23, i32 0, i32 1
  store i32 %12, i32* %source1, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 4
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_drawable26 = bitcast %union._GimpParamData* %data25 to i32*
  %14 = load i32, i32* %d_drawable26, align 4
  %params27 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %source2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params27, i32 0, i32 2
  store i32 %14, i32* %source2, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 5
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_drawable30 = bitcast %union._GimpParamData* %data29 to i32*
  %16 = load i32, i32* %d_drawable30, align 4
  %params31 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %depthMap1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params31, i32 0, i32 3
  store i32 %16, i32* %depthMap1, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 6
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_drawable34 = bitcast %union._GimpParamData* %data33 to i32*
  %18 = load i32, i32* %d_drawable34, align 4
  %params35 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %depthMap2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params35, i32 0, i32 4
  store i32 %18, i32* %depthMap2, align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 7
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data37 to double*
  %20 = load double, double* %d_float, align 8
  %conv = fptrunc double %20 to float
  %params38 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %overlap = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params38, i32 0, i32 5
  store float %conv, float* %overlap, align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 8
  %data40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx39, i32 0, i32 1
  %d_float41 = bitcast %union._GimpParamData* %data40 to double*
  %22 = load double, double* %d_float41, align 8
  %conv42 = fptrunc double %22 to float
  %params43 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %offset = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params43, i32 0, i32 6
  store float %conv42, float* %offset, align 4
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 9
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %24 = load double, double* %d_float46, align 8
  %conv47 = fptrunc double %24 to float
  %params48 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %scale1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params48, i32 0, i32 7
  store float %conv47, float* %scale1, align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 10
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_float51 = bitcast %union._GimpParamData* %data50 to double*
  %26 = load double, double* %d_float51, align 8
  %conv52 = fptrunc double %26 to float
  %params53 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %scale2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params53, i32 0, i32 8
  store float %conv52, float* %scale2, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.14
  %call55 = call i32 @DepthMerge_construct(%struct._DepthMerge* %dm)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.54
  br label %return

if.end.58:                                        ; preds = %if.end.54
  br label %sw.epilog

sw.bb.59:                                         ; preds = %do.end
  call void @DepthMerge_initParams(%struct._DepthMerge* %dm)
  %params60 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %27 = bitcast %struct._DepthMergeParams* %params60 to i8*
  %call61 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %27)
  %call62 = call i32 @DepthMerge_construct(%struct._DepthMerge* %dm)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %sw.bb.59
  br label %return

if.end.65:                                        ; preds = %sw.bb.59
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.65, %if.end.58, %if.end.12
  %28 = load i32, i32* %status, align 4
  %cmp66 = icmp eq i32 %28, 3
  br i1 %cmp66, label %if.then.68, label %if.end.88

if.then.68:                                       ; preds = %sw.epilog
  %resultDrawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 2
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load i32, i32* %width, align 4
  %call69 = call i32 @gimp_tile_width() #5
  %add = add i32 %30, %call69
  %sub = sub i32 %add, 1
  %call70 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %sub, %call70
  %conv71 = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv71)
  %call72 = call i32 @DepthMerge_execute(%struct._DepthMerge* %dm)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.else.75, label %if.then.74

if.then.74:                                       ; preds = %if.then.68
  store i32 0, i32* %status, align 4
  br label %if.end.87

if.else.75:                                       ; preds = %if.then.68
  %31 = load i32, i32* %runMode, align 4
  %cmp76 = icmp ne i32 %31, 1
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %call79 = call i32 @gimp_displays_flush()
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  %32 = load i32, i32* %runMode, align 4
  %cmp81 = icmp eq i32 %32, 0
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %params84 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %dm, i32 0, i32 1
  %33 = bitcast %struct._DepthMergeParams* %params84 to i8*
  %call85 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %33, i32 36)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.74
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %sw.epilog
  call void @DepthMerge_destroy(%struct._DepthMerge* %dm)
  %34 = load i32, i32* %status, align 4
  store i32 %34, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.88, %if.then.64, %if.then.57, %if.then.11, %if.then
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

; Function Attrs: nounwind uwtable
define internal void @DepthMerge_initParams(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 1
  %result = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 0
  store i32 -1, i32* %result, align 4
  %1 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %1, i32 0, i32 1
  %source1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params1, i32 0, i32 1
  store i32 -1, i32* %source1, align 4
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params2 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 1
  %source2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params2, i32 0, i32 2
  store i32 -1, i32* %source2, align 4
  %3 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %3, i32 0, i32 1
  %depthMap1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params3, i32 0, i32 3
  store i32 -1, i32* %depthMap1, align 4
  %4 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %4, i32 0, i32 1
  %depthMap2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 4
  store i32 -1, i32* %depthMap2, align 4
  %5 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params5 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %5, i32 0, i32 1
  %overlap = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params5, i32 0, i32 5
  store float 0.000000e+00, float* %overlap, align 4
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %6, i32 0, i32 1
  %offset = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 6
  store float 0.000000e+00, float* %offset, align 4
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params7 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %scale1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params7, i32 0, i32 7
  store float 1.000000e+00, float* %scale1, align 4
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params8 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %scale2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params8, i32 0, i32 8
  store float 1.000000e+00, float* %scale2, align 4
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @DepthMerge_construct(%struct._DepthMerge* %dm) #0 {
entry:
  %retval = alloca i32, align 4
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 0
  store %struct._DepthMergeInterface* null, %struct._DepthMergeInterface** %interface, align 8
  %1 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %1, i32 0, i32 1
  %result = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 0
  %2 = load i32, i32* %result, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %2)
  %3 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %3, i32 0, i32 2
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %resultDrawable, align 8
  %4 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %4, i32 0, i32 2
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable1, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id, align 4
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 7
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 8
  %9 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %9, i32 0, i32 9
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 10
  %call2 = call i32 @gimp_drawable_mask_intersect(i32 %6, i32* %selectionX, i32* %selectionY, i32* %selectionWidth, i32* %selectionHeight)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %11, i32 0, i32 2
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable3, align 8
  %drawable_id4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id4, align 4
  %call5 = call i32 @gimp_drawable_has_alpha(i32 %13)
  %14 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultHasAlpha = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %14, i32 0, i32 11
  store i32 %call5, i32* %resultHasAlpha, align 4
  %15 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %15, i32 0, i32 1
  %source1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 1
  %16 = load i32, i32* %source1, align 4
  %cmp = icmp eq i32 %16, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params7 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %17, i32 0, i32 1
  %source18 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params7, i32 0, i32 1
  %18 = load i32, i32* %source18, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDrawable* [ null, %cond.true ], [ %call9, %cond.false ]
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 3
  store %struct._GimpDrawable* %cond, %struct._GimpDrawable** %source1Drawable, align 8
  %20 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %20, i32 0, i32 1
  %source2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params10, i32 0, i32 2
  %21 = load i32, i32* %source2, align 4
  %cmp11 = icmp eq i32 %21, -1
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  br label %cond.end.17

cond.false.13:                                    ; preds = %cond.end
  %22 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params14 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %22, i32 0, i32 1
  %source215 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params14, i32 0, i32 2
  %23 = load i32, i32* %source215, align 4
  %call16 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %23)
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.13, %cond.true.12
  %cond18 = phi %struct._GimpDrawable* [ null, %cond.true.12 ], [ %call16, %cond.false.13 ]
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 4
  store %struct._GimpDrawable* %cond18, %struct._GimpDrawable** %source2Drawable, align 8
  %25 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params19 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %25, i32 0, i32 1
  %depthMap1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params19, i32 0, i32 3
  %26 = load i32, i32* %depthMap1, align 4
  %cmp20 = icmp eq i32 %26, -1
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.17
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end.17
  %27 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params23 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %27, i32 0, i32 1
  %depthMap124 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params23, i32 0, i32 3
  %28 = load i32, i32* %depthMap124, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %28)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.21
  %cond27 = phi %struct._GimpDrawable* [ null, %cond.true.21 ], [ %call25, %cond.false.22 ]
  %29 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %29, i32 0, i32 5
  store %struct._GimpDrawable* %cond27, %struct._GimpDrawable** %depthMap1Drawable, align 8
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params28 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 1
  %depthMap2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params28, i32 0, i32 4
  %31 = load i32, i32* %depthMap2, align 4
  %cmp29 = icmp eq i32 %31, -1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.26
  br label %cond.end.35

cond.false.31:                                    ; preds = %cond.end.26
  %32 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params32 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %32, i32 0, i32 1
  %depthMap233 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params32, i32 0, i32 4
  %33 = load i32, i32* %depthMap233, align 4
  %call34 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %33)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.31, %cond.true.30
  %cond36 = phi %struct._GimpDrawable* [ null, %cond.true.30 ], [ %call34, %cond.false.31 ]
  %34 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %34, i32 0, i32 6
  store %struct._GimpDrawable* %cond36, %struct._GimpDrawable** %depthMap2Drawable, align 8
  %35 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params37 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %35, i32 0, i32 1
  %overlap = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params37, i32 0, i32 5
  %36 = load float, float* %overlap, align 4
  %cmp38 = fcmp ogt float %36, 2.000000e+00
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.35
  br label %cond.end.50

cond.false.40:                                    ; preds = %cond.end.35
  %37 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params41 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %37, i32 0, i32 1
  %overlap42 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params41, i32 0, i32 5
  %38 = load float, float* %overlap42, align 4
  %cmp43 = fcmp olt float %38, 0.000000e+00
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.40
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.false.40
  %39 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params46 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %39, i32 0, i32 1
  %overlap47 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params46, i32 0, i32 5
  %40 = load float, float* %overlap47, align 4
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi float [ 0.000000e+00, %cond.true.44 ], [ %40, %cond.false.45 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.39
  %cond51 = phi float [ 2.000000e+00, %cond.true.39 ], [ %cond49, %cond.end.48 ]
  %41 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params52 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %41, i32 0, i32 1
  %overlap53 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params52, i32 0, i32 5
  store float %cond51, float* %overlap53, align 4
  %42 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params54 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %42, i32 0, i32 1
  %offset = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params54, i32 0, i32 6
  %43 = load float, float* %offset, align 4
  %cmp55 = fcmp ogt float %43, 1.000000e+00
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.50
  br label %cond.end.67

cond.false.57:                                    ; preds = %cond.end.50
  %44 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params58 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %44, i32 0, i32 1
  %offset59 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params58, i32 0, i32 6
  %45 = load float, float* %offset59, align 4
  %cmp60 = fcmp olt float %45, -1.000000e+00
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.57
  br label %cond.end.65

cond.false.62:                                    ; preds = %cond.false.57
  %46 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params63 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %46, i32 0, i32 1
  %offset64 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params63, i32 0, i32 6
  %47 = load float, float* %offset64, align 4
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi float [ -1.000000e+00, %cond.true.61 ], [ %47, %cond.false.62 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end.65, %cond.true.56
  %cond68 = phi float [ 1.000000e+00, %cond.true.56 ], [ %cond66, %cond.end.65 ]
  %48 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params69 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %48, i32 0, i32 1
  %offset70 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params69, i32 0, i32 6
  store float %cond68, float* %offset70, align 4
  %49 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params71 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %49, i32 0, i32 1
  %scale1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params71, i32 0, i32 7
  %50 = load float, float* %scale1, align 4
  %cmp72 = fcmp ogt float %50, 1.000000e+00
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end.67
  br label %cond.end.84

cond.false.74:                                    ; preds = %cond.end.67
  %51 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params75 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %51, i32 0, i32 1
  %scale176 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params75, i32 0, i32 7
  %52 = load float, float* %scale176, align 4
  %cmp77 = fcmp olt float %52, -1.000000e+00
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.false.74
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.false.74
  %53 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params80 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %53, i32 0, i32 1
  %scale181 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params80, i32 0, i32 7
  %54 = load float, float* %scale181, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.78
  %cond83 = phi float [ -1.000000e+00, %cond.true.78 ], [ %54, %cond.false.79 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.73
  %cond85 = phi float [ 1.000000e+00, %cond.true.73 ], [ %cond83, %cond.end.82 ]
  %55 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params86 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %55, i32 0, i32 1
  %scale187 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params86, i32 0, i32 7
  store float %cond85, float* %scale187, align 4
  %56 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params88 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %56, i32 0, i32 1
  %scale2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params88, i32 0, i32 8
  %57 = load float, float* %scale2, align 4
  %cmp89 = fcmp ogt float %57, 1.000000e+00
  br i1 %cmp89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.84
  br label %cond.end.101

cond.false.91:                                    ; preds = %cond.end.84
  %58 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params92 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %58, i32 0, i32 1
  %scale293 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params92, i32 0, i32 8
  %59 = load float, float* %scale293, align 4
  %cmp94 = fcmp olt float %59, -1.000000e+00
  br i1 %cmp94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.false.91
  br label %cond.end.99

cond.false.96:                                    ; preds = %cond.false.91
  %60 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params97 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %60, i32 0, i32 1
  %scale298 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params97, i32 0, i32 8
  %61 = load float, float* %scale298, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.96, %cond.true.95
  %cond100 = phi float [ -1.000000e+00, %cond.true.95 ], [ %61, %cond.false.96 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true.90
  %cond102 = phi float [ 1.000000e+00, %cond.true.90 ], [ %cond100, %cond.end.99 ]
  %62 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params103 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %62, i32 0, i32 1
  %scale2104 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params103, i32 0, i32 8
  store float %cond102, float* %scale2104, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.101, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @DepthMerge_dialog(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 64)
  %0 = bitcast i8* %call to %struct._DepthMergeInterface*
  %1 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %1, i32 0, i32 0
  store %struct._DepthMergeInterface* %0, %struct._DepthMergeInterface** %interface, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 1)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #4
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 0
  %3 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface3, align 8
  %dialog4 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %3, i32 0, i32 1
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog4, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %9)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %vbox, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %12, i32 12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %27, i32 1)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call23)
  %30 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %33, i32 0, i32 9
  %34 = load i32, i32* %selectionWidth, align 4
  %cmp = icmp slt i32 %34, 256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %35 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth25 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %35, i32 0, i32 9
  %36 = load i32, i32* %selectionWidth25, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ 256, %cond.false ]
  %37 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface26 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %37, i32 0, i32 0
  %38 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface26, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %38, i32 0, i32 3
  store i32 %cond, i32* %previewWidth, align 4
  %39 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %39, i32 0, i32 10
  %40 = load i32, i32* %selectionHeight, align 4
  %cmp27 = icmp slt i32 %40, 256
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end
  %41 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight29 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %41, i32 0, i32 10
  %42 = load i32, i32* %selectionHeight29, align 4
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi i32 [ %42, %cond.true.28 ], [ 256, %cond.false.30 ]
  %43 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface33 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %43, i32 0, i32 0
  %44 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface33, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %44, i32 0, i32 4
  store i32 %cond32, i32* %previewHeight, align 4
  %call34 = call %struct._GtkWidget* @gimp_preview_area_new()
  %45 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface35 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %45, i32 0, i32 0
  %46 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface35, align 8
  %preview = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %46, i32 0, i32 2
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %preview, align 8
  %47 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface36 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %47, i32 0, i32 0
  %48 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface36, align 8
  %preview37 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %48, i32 0, i32 2
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %preview37, align 8
  %50 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface38 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %50, i32 0, i32 0
  %51 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface38, align 8
  %previewWidth39 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %51, i32 0, i32 3
  %52 = load i32, i32* %previewWidth39, align 4
  %53 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface40 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %53, i32 0, i32 0
  %54 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface40, align 8
  %previewHeight41 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %54, i32 0, i32 4
  %55 = load i32, i32* %previewHeight41, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %49, i32 %52, i32 %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call42)
  %58 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %59 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface44 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %59, i32 0, i32 0
  %60 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface44, align 8
  %preview45 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %60, i32 0, i32 2
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %preview45, align 8
  call void @gtk_container_add(%struct._GtkContainer* %58, %struct._GtkWidget* %61)
  %62 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface46 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %62, i32 0, i32 0
  %63 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface46, align 8
  %preview47 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %63, i32 0, i32 2
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %preview47, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_buildPreviewSourceImage(%struct._DepthMerge* %65)
  %call48 = call %struct._GtkWidget* @gtk_table_new(i32 8, i32 3, i32 0)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %table, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call49)
  %68 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %68, i32 6)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call51)
  %71 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %71, i32 6)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call53)
  %74 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %74, i32 1, i32 12)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call55)
  %77 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %77, i32 3, i32 12)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call57)
  %80 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0)) #4
  %call60 = call %struct._GtkWidget* @gtk_label_new(i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %label, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_misc_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call61)
  %85 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %85, float 0.000000e+00, float 5.000000e-01)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call63)
  %88 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %88, %struct._GtkWidget* %89, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %92 = bitcast %struct._DepthMerge* %91 to i8*
  %call65 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @dm_constraint, i8* %92)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %combo, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_int_combo_box_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call66)
  %95 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpIntComboBox*
  %96 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %96, i32 0, i32 1
  %source1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 1
  %97 = load i32, i32* %source1, align 4
  %98 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %99 = bitcast %struct._DepthMerge* %98 to i8*
  %call68 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %95, i32 %97, void ()* bitcast (void (%struct._GtkWidget*, %struct._DepthMerge*)* @dialogSource1ChangedCallback to void ()*), i8* %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call69)
  %102 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %102, %struct._GtkWidget* %103, i32 1, i32 3, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #4
  %call72 = call %struct._GtkWidget* @gtk_label_new(i8* %call71)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %label, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_misc_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call73)
  %107 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %107, float 0.000000e+00, float 5.000000e-01)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_table_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call75)
  %110 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkTable*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %110, %struct._GtkWidget* %111, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %113 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %114 = bitcast %struct._DepthMerge* %113 to i8*
  %call77 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @dm_constraint, i8* %114)
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %combo, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_int_combo_box_get_type() #5
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call78)
  %117 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpIntComboBox*
  %118 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params80 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %118, i32 0, i32 1
  %depthMap1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params80, i32 0, i32 3
  %119 = load i32, i32* %depthMap1, align 4
  %120 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %121 = bitcast %struct._DepthMerge* %120 to i8*
  %call81 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %117, i32 %119, void ()* bitcast (void (%struct._GtkWidget*, %struct._DepthMerge*)* @dialogDepthMap1ChangedCallback to void ()*), i8* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call82)
  %124 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %124, %struct._GtkWidget* %125, i32 1, i32 3, i32 1, i32 2, i32 5, i32 5, i32 0, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0)) #4
  %call85 = call %struct._GtkWidget* @gtk_label_new(i8* %call84)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %label, align 8
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_misc_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call86)
  %129 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %129, float 0.000000e+00, float 5.000000e-01)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call88)
  %132 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %132, %struct._GtkWidget* %133, i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %134)
  %135 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %136 = bitcast %struct._DepthMerge* %135 to i8*
  %call90 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @dm_constraint, i8* %136)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %combo, align 8
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call91 = call i64 @gimp_int_combo_box_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call91)
  %139 = bitcast %struct._GTypeInstance* %call92 to %struct._GimpIntComboBox*
  %140 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params93 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %140, i32 0, i32 1
  %source2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params93, i32 0, i32 2
  %141 = load i32, i32* %source2, align 4
  %142 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %143 = bitcast %struct._DepthMerge* %142 to i8*
  %call94 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %139, i32 %141, void ()* bitcast (void (%struct._GtkWidget*, %struct._DepthMerge*)* @dialogSource2ChangedCallback to void ()*), i8* %143)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_table_get_type() #5
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call95)
  %146 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkTable*
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %146, %struct._GtkWidget* %147, i32 1, i32 3, i32 2, i32 3, i32 5, i32 5, i32 0, i32 0)
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %148)
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #4
  %call98 = call %struct._GtkWidget* @gtk_label_new(i8* %call97)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %label, align 8
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_misc_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call99)
  %151 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %151, float 0.000000e+00, float 5.000000e-01)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #5
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call101)
  %154 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %154, %struct._GtkWidget* %155, i32 0, i32 1, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %156)
  %157 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %158 = bitcast %struct._DepthMerge* %157 to i8*
  %call103 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @dm_constraint, i8* %158)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %combo, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_int_combo_box_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call104)
  %161 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpIntComboBox*
  %162 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params106 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %162, i32 0, i32 1
  %depthMap2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params106, i32 0, i32 4
  %163 = load i32, i32* %depthMap2, align 4
  %164 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %165 = bitcast %struct._DepthMerge* %164 to i8*
  %call107 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %161, i32 %163, void ()* bitcast (void (%struct._GtkWidget*, %struct._DepthMerge*)* @dialogDepthMap2ChangedCallback to void ()*), i8* %165)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_table_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call108)
  %168 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkTable*
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_table_attach(%struct._GtkTable* %168, %struct._GtkWidget* %169, i32 1, i32 3, i32 3, i32 4, i32 5, i32 5, i32 0, i32 0)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %170)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_table_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call110)
  %173 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkTable*
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #4
  %174 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params113 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %174, i32 0, i32 1
  %overlap = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params113, i32 0, i32 5
  %175 = load float, float* %overlap, align 4
  %conv = fpext float %175 to double
  %call114 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %173, i32 0, i32 4, i8* %call112, i32 0, i32 6, double %conv, double 0.000000e+00, double 2.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call114, %struct._GtkObject** %adj, align 8
  %176 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %177 = bitcast %struct._GtkObject* %176 to i8*
  %178 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params115 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %178, i32 0, i32 1
  %overlap116 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params115, i32 0, i32 5
  %179 = bitcast float* %overlap116 to i8*
  %call117 = call i64 @g_signal_connect_data(i8* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialogValueScaleUpdateCallback to void ()*), i8* %179, void (i8*, %struct._GClosure*)* null, i32 0)
  %180 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %181 = bitcast %struct._GtkObject* %180 to %struct._GTypeInstance*
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 80)
  %182 = bitcast %struct._GTypeInstance* %call118 to %struct._GObject*
  %183 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %184 = bitcast %struct._DepthMerge* %183 to i8*
  call void @g_object_set_data(%struct._GObject* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %184)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_table_get_type() #5
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call119)
  %187 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkTable*
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #4
  %188 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params122 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %188, i32 0, i32 1
  %offset = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params122, i32 0, i32 6
  %189 = load float, float* %offset, align 4
  %conv123 = fpext float %189 to double
  %call124 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %187, i32 0, i32 5, i8* %call121, i32 0, i32 6, double %conv123, double -1.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call124, %struct._GtkObject** %adj, align 8
  %190 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %191 = bitcast %struct._GtkObject* %190 to i8*
  %192 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params125 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %192, i32 0, i32 1
  %offset126 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params125, i32 0, i32 6
  %193 = bitcast float* %offset126 to i8*
  %call127 = call i64 @g_signal_connect_data(i8* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialogValueScaleUpdateCallback to void ()*), i8* %193, void (i8*, %struct._GClosure*)* null, i32 0)
  %194 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %195 = bitcast %struct._GtkObject* %194 to %struct._GTypeInstance*
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 80)
  %196 = bitcast %struct._GTypeInstance* %call128 to %struct._GObject*
  %197 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %198 = bitcast %struct._DepthMerge* %197 to i8*
  call void @g_object_set_data(%struct._GObject* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %198)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_table_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call129)
  %201 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkTable*
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #4
  %202 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params132 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %202, i32 0, i32 1
  %scale1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params132, i32 0, i32 7
  %203 = load float, float* %scale1, align 4
  %conv133 = fpext float %203 to double
  %call134 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %201, i32 0, i32 6, i8* %call131, i32 0, i32 6, double %conv133, double -1.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call134, %struct._GtkObject** %adj, align 8
  %204 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %205 = bitcast %struct._GtkObject* %204 to i8*
  %206 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params135 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %206, i32 0, i32 1
  %scale1136 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params135, i32 0, i32 7
  %207 = bitcast float* %scale1136 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialogValueScaleUpdateCallback to void ()*), i8* %207, void (i8*, %struct._GClosure*)* null, i32 0)
  %208 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %209 = bitcast %struct._GtkObject* %208 to %struct._GTypeInstance*
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %209, i64 80)
  %210 = bitcast %struct._GTypeInstance* %call138 to %struct._GObject*
  %211 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %212 = bitcast %struct._DepthMerge* %211 to i8*
  call void @g_object_set_data(%struct._GObject* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %212)
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %214 = bitcast %struct._GtkWidget* %213 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_table_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %214, i64 %call139)
  %215 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkTable*
  %call141 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0)) #4
  %216 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params142 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %216, i32 0, i32 1
  %scale2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params142, i32 0, i32 8
  %217 = load float, float* %scale2, align 4
  %conv143 = fpext float %217 to double
  %call144 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %215, i32 0, i32 7, i8* %call141, i32 0, i32 6, double %conv143, double -1.000000e+00, double 1.000000e+00, double 1.000000e-03, double 1.000000e-02, i32 3, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call144, %struct._GtkObject** %adj, align 8
  %218 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %219 = bitcast %struct._GtkObject* %218 to i8*
  %220 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params145 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %220, i32 0, i32 1
  %scale2146 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params145, i32 0, i32 8
  %221 = bitcast float* %scale2146 to i8*
  %call147 = call i64 @g_signal_connect_data(i8* %219, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @dialogValueScaleUpdateCallback to void ()*), i8* %221, void (i8*, %struct._GClosure*)* null, i32 0)
  %222 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %223 = bitcast %struct._GtkObject* %222 to %struct._GTypeInstance*
  %call148 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %223, i64 80)
  %224 = bitcast %struct._GTypeInstance* %call148 to %struct._GObject*
  %225 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %226 = bitcast %struct._DepthMerge* %225 to i8*
  call void @g_object_set_data(%struct._GObject* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* %226)
  %227 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface149 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %227, i32 0, i32 0
  %228 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface149, align 8
  %active = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %228, i32 0, i32 0
  store i32 1, i32* %active, align 4
  %229 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface150 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %229, i32 0, i32 0
  %230 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface150, align 8
  %dialog151 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %230, i32 0, i32 1
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog151, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %231)
  %232 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %232)
  %233 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface152 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %233, i32 0, i32 0
  %234 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface152, align 8
  %dialog153 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %234, i32 0, i32 1
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog153, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call154 = call i64 @gimp_dialog_get_type() #5
  %call155 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call154)
  %237 = bitcast %struct._GTypeInstance* %call155 to %struct._GimpDialog*
  %call156 = call i32 @gimp_dialog_run(%struct._GimpDialog* %237)
  %cmp157 = icmp eq i32 %call156, -5
  %conv158 = zext i1 %cmp157 to i32
  store i32 %conv158, i32* %run, align 4
  %238 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface159 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %238, i32 0, i32 0
  %239 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface159, align 8
  %dialog160 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %239, i32 0, i32 1
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog160, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %240)
  %241 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface161 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %241, i32 0, i32 0
  %242 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface161, align 8
  %dialog162 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %242, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog162, align 8
  %243 = load i32, i32* %run, align 4
  ret i32 %243
}

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal i32 @DepthMerge_execute(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %source1Rgn = alloca %struct._GimpPixelRgn, align 8
  %source2Rgn = alloca %struct._GimpPixelRgn, align 8
  %depthMap1Rgn = alloca %struct._GimpPixelRgn, align 8
  %depthMap2Rgn = alloca %struct._GimpPixelRgn, align 8
  %resultRgn = alloca %struct._GimpPixelRgn, align 8
  %source1Row = alloca i8*, align 8
  %source2Row = alloca i8*, align 8
  %depthMap1Row = alloca i8*, align 8
  %depthMap2Row = alloca i8*, align 8
  %resultRow = alloca i8*, align 8
  %tempRow = alloca i8*, align 8
  %source1HasAlpha = alloca i32, align 4
  %source2HasAlpha = alloca i32, align 4
  %depthMap1HasAlpha = alloca i32, align 4
  %depthMap2HasAlpha = alloca i32, align 4
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  store i32 0, i32* %source1HasAlpha, align 4
  store i32 0, i32* %source2HasAlpha, align 4
  store i32 0, i32* %depthMap1HasAlpha, align 4
  store i32 0, i32* %depthMap2HasAlpha, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0)) #4
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 9
  %1 = load i32, i32* %selectionWidth, align 4
  %mul = mul nsw i32 %1, 4
  %conv = sext i32 %mul to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call2, i8** %resultRow, align 8
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 9
  %3 = load i32, i32* %selectionWidth3, align 4
  %mul4 = mul nsw i32 %3, 4
  %conv5 = sext i32 %mul4 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv5, i64 1)
  store i8* %call6, i8** %source1Row, align 8
  %4 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth7 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %4, i32 0, i32 9
  %5 = load i32, i32* %selectionWidth7, align 4
  %mul8 = mul nsw i32 %5, 4
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv9, i64 1)
  store i8* %call10, i8** %source2Row, align 8
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %6, i32 0, i32 9
  %7 = load i32, i32* %selectionWidth11, align 4
  %conv12 = sext i32 %7 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %depthMap1Row, align 8
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth14 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 9
  %9 = load i32, i32* %selectionWidth14, align 4
  %conv15 = sext i32 %9 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 1)
  store i8* %call16, i8** %depthMap2Row, align 8
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth17 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 9
  %11 = load i32, i32* %selectionWidth17, align 4
  %mul18 = mul nsw i32 %11, 4
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %tempRow, align 8
  %12 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %12, i32 0, i32 3
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable, align 8
  %cmp = icmp ne %struct._GimpDrawable* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable22 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %14, i32 0, i32 3
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable22, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id, align 4
  %call23 = call i32 @gimp_drawable_has_alpha(i32 %16)
  store i32 %call23, i32* %source1HasAlpha, align 4
  %17 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable24 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %17, i32 0, i32 3
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable24, align 8
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 7
  %20 = load i32, i32* %selectionX, align 4
  %21 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %21, i32 0, i32 8
  %22 = load i32, i32* %selectionY, align 4
  %23 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth25 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %23, i32 0, i32 9
  %24 = load i32, i32* %selectionWidth25, align 4
  %25 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %25, i32 0, i32 10
  %26 = load i32, i32* %selectionHeight, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %source1Rgn, %struct._GimpDrawable* %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 0, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %27 = load i32, i32* %x, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth26 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 9
  %29 = load i32, i32* %selectionWidth26, align 4
  %cmp27 = icmp slt i32 %27, %29
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %x, align 4
  %mul29 = mul nsw i32 4, %30
  %idxprom = sext i32 %mul29 to i64
  %31 = load i8*, i8** %source1Row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %32 = load i32, i32* %x, align 4
  %mul30 = mul nsw i32 4, %32
  %add = add nsw i32 %mul30, 1
  %idxprom31 = sext i32 %add to i64
  %33 = load i8*, i8** %source1Row, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 %idxprom31
  store i8 0, i8* %arrayidx32, align 1
  %34 = load i32, i32* %x, align 4
  %mul33 = mul nsw i32 4, %34
  %add34 = add nsw i32 %mul33, 2
  %idxprom35 = sext i32 %add34 to i64
  %35 = load i8*, i8** %source1Row, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  %36 = load i32, i32* %x, align 4
  %mul37 = mul nsw i32 4, %36
  %add38 = add nsw i32 %mul37, 3
  %idxprom39 = sext i32 %add38 to i64
  %37 = load i8*, i8** %source1Row, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %37, i64 %idxprom39
  store i8 -1, i8* %arrayidx40, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %x, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %39 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %39, i32 0, i32 4
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable, align 8
  %cmp41 = icmp ne %struct._GimpDrawable* %40, null
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.end
  %41 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable44 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %41, i32 0, i32 4
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable44, align 8
  %drawable_id45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id45, align 4
  %call46 = call i32 @gimp_drawable_has_alpha(i32 %43)
  store i32 %call46, i32* %source2HasAlpha, align 4
  %44 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable47 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %44, i32 0, i32 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable47, align 8
  %46 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX48 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %46, i32 0, i32 7
  %47 = load i32, i32* %selectionX48, align 4
  %48 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY49 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %48, i32 0, i32 8
  %49 = load i32, i32* %selectionY49, align 4
  %50 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth50 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %50, i32 0, i32 9
  %51 = load i32, i32* %selectionWidth50, align 4
  %52 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight51 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %52, i32 0, i32 10
  %53 = load i32, i32* %selectionHeight51, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %source2Rgn, %struct._GimpDrawable* %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 0, i32 0)
  br label %if.end.76

if.else.52:                                       ; preds = %if.end
  store i32 0, i32* %x, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.73, %if.else.52
  %54 = load i32, i32* %x, align 4
  %55 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth54 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %55, i32 0, i32 9
  %56 = load i32, i32* %selectionWidth54, align 4
  %cmp55 = icmp slt i32 %54, %56
  br i1 %cmp55, label %for.body.57, label %for.end.75

for.body.57:                                      ; preds = %for.cond.53
  %57 = load i32, i32* %x, align 4
  %mul58 = mul nsw i32 4, %57
  %idxprom59 = sext i32 %mul58 to i64
  %58 = load i8*, i8** %source2Row, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %58, i64 %idxprom59
  store i8 0, i8* %arrayidx60, align 1
  %59 = load i32, i32* %x, align 4
  %mul61 = mul nsw i32 4, %59
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %60 = load i8*, i8** %source2Row, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %60, i64 %idxprom63
  store i8 0, i8* %arrayidx64, align 1
  %61 = load i32, i32* %x, align 4
  %mul65 = mul nsw i32 4, %61
  %add66 = add nsw i32 %mul65, 2
  %idxprom67 = sext i32 %add66 to i64
  %62 = load i8*, i8** %source2Row, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %62, i64 %idxprom67
  store i8 0, i8* %arrayidx68, align 1
  %63 = load i32, i32* %x, align 4
  %mul69 = mul nsw i32 4, %63
  %add70 = add nsw i32 %mul69, 3
  %idxprom71 = sext i32 %add70 to i64
  %64 = load i8*, i8** %source2Row, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %64, i64 %idxprom71
  store i8 -1, i8* %arrayidx72, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.57
  %65 = load i32, i32* %x, align 4
  %inc74 = add nsw i32 %65, 1
  store i32 %inc74, i32* %x, align 4
  br label %for.cond.53

for.end.75:                                       ; preds = %for.cond.53
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %if.then.43
  %66 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %66, i32 0, i32 5
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable, align 8
  %cmp77 = icmp ne %struct._GimpDrawable* %67, null
  br i1 %cmp77, label %if.then.79, label %if.else.88

if.then.79:                                       ; preds = %if.end.76
  %68 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable80 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %68, i32 0, i32 5
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable80, align 8
  %drawable_id81 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %69, i32 0, i32 0
  %70 = load i32, i32* %drawable_id81, align 4
  %call82 = call i32 @gimp_drawable_has_alpha(i32 %70)
  store i32 %call82, i32* %depthMap1HasAlpha, align 4
  %71 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable83 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %71, i32 0, i32 5
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable83, align 8
  %73 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX84 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %73, i32 0, i32 7
  %74 = load i32, i32* %selectionX84, align 4
  %75 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY85 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %75, i32 0, i32 8
  %76 = load i32, i32* %selectionY85, align 4
  %77 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth86 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %77, i32 0, i32 9
  %78 = load i32, i32* %selectionWidth86, align 4
  %79 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight87 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %79, i32 0, i32 10
  %80 = load i32, i32* %selectionHeight87, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %depthMap1Rgn, %struct._GimpDrawable* %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 0, i32 0)
  br label %if.end.99

if.else.88:                                       ; preds = %if.end.76
  store i32 0, i32* %x, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.96, %if.else.88
  %81 = load i32, i32* %x, align 4
  %82 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth90 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %82, i32 0, i32 9
  %83 = load i32, i32* %selectionWidth90, align 4
  %cmp91 = icmp slt i32 %81, %83
  br i1 %cmp91, label %for.body.93, label %for.end.98

for.body.93:                                      ; preds = %for.cond.89
  %84 = load i32, i32* %x, align 4
  %idxprom94 = sext i32 %84 to i64
  %85 = load i8*, i8** %depthMap1Row, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %85, i64 %idxprom94
  store i8 0, i8* %arrayidx95, align 1
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.93
  %86 = load i32, i32* %x, align 4
  %inc97 = add nsw i32 %86, 1
  store i32 %inc97, i32* %x, align 4
  br label %for.cond.89

for.end.98:                                       ; preds = %for.cond.89
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %if.then.79
  %87 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %87, i32 0, i32 6
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable, align 8
  %cmp100 = icmp ne %struct._GimpDrawable* %88, null
  br i1 %cmp100, label %if.then.102, label %if.else.111

if.then.102:                                      ; preds = %if.end.99
  %89 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable103 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %89, i32 0, i32 6
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable103, align 8
  %drawable_id104 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %90, i32 0, i32 0
  %91 = load i32, i32* %drawable_id104, align 4
  %call105 = call i32 @gimp_drawable_has_alpha(i32 %91)
  store i32 %call105, i32* %depthMap2HasAlpha, align 4
  %92 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable106 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %92, i32 0, i32 6
  %93 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable106, align 8
  %94 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX107 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %94, i32 0, i32 7
  %95 = load i32, i32* %selectionX107, align 4
  %96 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY108 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %96, i32 0, i32 8
  %97 = load i32, i32* %selectionY108, align 4
  %98 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth109 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %98, i32 0, i32 9
  %99 = load i32, i32* %selectionWidth109, align 4
  %100 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight110 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %100, i32 0, i32 10
  %101 = load i32, i32* %selectionHeight110, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %depthMap2Rgn, %struct._GimpDrawable* %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 0, i32 0)
  br label %if.end.122

if.else.111:                                      ; preds = %if.end.99
  store i32 0, i32* %x, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.119, %if.else.111
  %102 = load i32, i32* %x, align 4
  %103 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth113 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %103, i32 0, i32 9
  %104 = load i32, i32* %selectionWidth113, align 4
  %cmp114 = icmp slt i32 %102, %104
  br i1 %cmp114, label %for.body.116, label %for.end.121

for.body.116:                                     ; preds = %for.cond.112
  %105 = load i32, i32* %x, align 4
  %idxprom117 = sext i32 %105 to i64
  %106 = load i8*, i8** %depthMap2Row, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %106, i64 %idxprom117
  store i8 0, i8* %arrayidx118, align 1
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.116
  %107 = load i32, i32* %x, align 4
  %inc120 = add nsw i32 %107, 1
  store i32 %inc120, i32* %x, align 4
  br label %for.cond.112

for.end.121:                                      ; preds = %for.cond.112
  br label %if.end.122

if.end.122:                                       ; preds = %for.end.121, %if.then.102
  %108 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %108, i32 0, i32 2
  %109 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable, align 8
  %110 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX123 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %110, i32 0, i32 7
  %111 = load i32, i32* %selectionX123, align 4
  %112 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY124 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %112, i32 0, i32 8
  %113 = load i32, i32* %selectionY124, align 4
  %114 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth125 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %114, i32 0, i32 9
  %115 = load i32, i32* %selectionWidth125, align 4
  %116 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight126 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %116, i32 0, i32 10
  %117 = load i32, i32* %selectionHeight126, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %resultRgn, %struct._GimpDrawable* %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 1, i32 1)
  %118 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY127 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %118, i32 0, i32 8
  %119 = load i32, i32* %selectionY127, align 4
  store i32 %119, i32* %y, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.186, %if.end.122
  %120 = load i32, i32* %y, align 4
  %121 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY129 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %121, i32 0, i32 8
  %122 = load i32, i32* %selectionY129, align 4
  %123 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight130 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %123, i32 0, i32 10
  %124 = load i32, i32* %selectionHeight130, align 4
  %add131 = add nsw i32 %122, %124
  %cmp132 = icmp slt i32 %120, %add131
  br i1 %cmp132, label %for.body.134, label %for.end.188

for.body.134:                                     ; preds = %for.cond.128
  %125 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable135 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %125, i32 0, i32 3
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable135, align 8
  %cmp136 = icmp ne %struct._GimpDrawable* %126, null
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %for.body.134
  %127 = load i8*, i8** %tempRow, align 8
  %128 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX139 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %128, i32 0, i32 7
  %129 = load i32, i32* %selectionX139, align 4
  %130 = load i32, i32* %y, align 4
  %131 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth140 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %131, i32 0, i32 9
  %132 = load i32, i32* %selectionWidth140, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %source1Rgn, i8* %127, i32 %129, i32 %130, i32 %132)
  %133 = load i8*, i8** %source1Row, align 8
  %134 = load i8*, i8** %tempRow, align 8
  %135 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable141 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %135, i32 0, i32 3
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable141, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %136, i32 0, i32 3
  %137 = load i32, i32* %bpp, align 4
  %138 = load i32, i32* %source1HasAlpha, align 4
  %139 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth142 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %139, i32 0, i32 9
  %140 = load i32, i32* %selectionWidth142, align 4
  call void @util_convertColorspace(i8* %133, i32 4, i32 1, i8* %134, i32 %137, i32 %138, i32 %140)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %for.body.134
  %141 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable144 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %141, i32 0, i32 4
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable144, align 8
  %cmp145 = icmp ne %struct._GimpDrawable* %142, null
  br i1 %cmp145, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %if.end.143
  %143 = load i8*, i8** %tempRow, align 8
  %144 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX148 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %144, i32 0, i32 7
  %145 = load i32, i32* %selectionX148, align 4
  %146 = load i32, i32* %y, align 4
  %147 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth149 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %147, i32 0, i32 9
  %148 = load i32, i32* %selectionWidth149, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %source2Rgn, i8* %143, i32 %145, i32 %146, i32 %148)
  %149 = load i8*, i8** %source2Row, align 8
  %150 = load i8*, i8** %tempRow, align 8
  %151 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable150 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %151, i32 0, i32 4
  %152 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable150, align 8
  %bpp151 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %152, i32 0, i32 3
  %153 = load i32, i32* %bpp151, align 4
  %154 = load i32, i32* %source2HasAlpha, align 4
  %155 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth152 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %155, i32 0, i32 9
  %156 = load i32, i32* %selectionWidth152, align 4
  call void @util_convertColorspace(i8* %149, i32 4, i32 1, i8* %150, i32 %153, i32 %154, i32 %156)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.147, %if.end.143
  %157 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable154 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %157, i32 0, i32 5
  %158 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable154, align 8
  %cmp155 = icmp ne %struct._GimpDrawable* %158, null
  br i1 %cmp155, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %if.end.153
  %159 = load i8*, i8** %tempRow, align 8
  %160 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX158 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %160, i32 0, i32 7
  %161 = load i32, i32* %selectionX158, align 4
  %162 = load i32, i32* %y, align 4
  %163 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth159 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %163, i32 0, i32 9
  %164 = load i32, i32* %selectionWidth159, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %depthMap1Rgn, i8* %159, i32 %161, i32 %162, i32 %164)
  %165 = load i8*, i8** %depthMap1Row, align 8
  %166 = load i8*, i8** %tempRow, align 8
  %167 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable160 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %167, i32 0, i32 5
  %168 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable160, align 8
  %bpp161 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %168, i32 0, i32 3
  %169 = load i32, i32* %bpp161, align 4
  %170 = load i32, i32* %depthMap1HasAlpha, align 4
  %171 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth162 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %171, i32 0, i32 9
  %172 = load i32, i32* %selectionWidth162, align 4
  call void @util_convertColorspace(i8* %165, i32 1, i32 0, i8* %166, i32 %169, i32 %170, i32 %172)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.157, %if.end.153
  %173 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable164 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %173, i32 0, i32 6
  %174 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable164, align 8
  %cmp165 = icmp ne %struct._GimpDrawable* %174, null
  br i1 %cmp165, label %if.then.167, label %if.end.173

if.then.167:                                      ; preds = %if.end.163
  %175 = load i8*, i8** %tempRow, align 8
  %176 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX168 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %176, i32 0, i32 7
  %177 = load i32, i32* %selectionX168, align 4
  %178 = load i32, i32* %y, align 4
  %179 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth169 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %179, i32 0, i32 9
  %180 = load i32, i32* %selectionWidth169, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %depthMap2Rgn, i8* %175, i32 %177, i32 %178, i32 %180)
  %181 = load i8*, i8** %depthMap2Row, align 8
  %182 = load i8*, i8** %tempRow, align 8
  %183 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable170 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %183, i32 0, i32 6
  %184 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable170, align 8
  %bpp171 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %184, i32 0, i32 3
  %185 = load i32, i32* %bpp171, align 4
  %186 = load i32, i32* %depthMap2HasAlpha, align 4
  %187 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth172 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %187, i32 0, i32 9
  %188 = load i32, i32* %selectionWidth172, align 4
  call void @util_convertColorspace(i8* %181, i32 1, i32 0, i8* %182, i32 %185, i32 %186, i32 %188)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.167, %if.end.163
  %189 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %190 = load i8*, i8** %source1Row, align 8
  %191 = load i8*, i8** %source2Row, align 8
  %192 = load i8*, i8** %depthMap1Row, align 8
  %193 = load i8*, i8** %depthMap2Row, align 8
  %194 = load i8*, i8** %resultRow, align 8
  %195 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth174 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %195, i32 0, i32 9
  %196 = load i32, i32* %selectionWidth174, align 4
  call void @DepthMerge_executeRegion(%struct._DepthMerge* %189, i8* %190, i8* %191, i8* %192, i8* %193, i8* %194, i32 %196)
  %197 = load i8*, i8** %tempRow, align 8
  %198 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable175 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %198, i32 0, i32 2
  %199 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable175, align 8
  %bpp176 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %199, i32 0, i32 3
  %200 = load i32, i32* %bpp176, align 4
  %201 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultHasAlpha = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %201, i32 0, i32 11
  %202 = load i32, i32* %resultHasAlpha, align 4
  %203 = load i8*, i8** %resultRow, align 8
  %204 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth177 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %204, i32 0, i32 9
  %205 = load i32, i32* %selectionWidth177, align 4
  call void @util_convertColorspace(i8* %197, i32 %200, i32 %202, i8* %203, i32 4, i32 1, i32 %205)
  %206 = load i8*, i8** %tempRow, align 8
  %207 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX178 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %207, i32 0, i32 7
  %208 = load i32, i32* %selectionX178, align 4
  %209 = load i32, i32* %y, align 4
  %210 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth179 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %210, i32 0, i32 9
  %211 = load i32, i32* %selectionWidth179, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %resultRgn, i8* %206, i32 %208, i32 %209, i32 %211)
  %212 = load i32, i32* %y, align 4
  %213 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY180 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %213, i32 0, i32 8
  %214 = load i32, i32* %selectionY180, align 4
  %sub = sub nsw i32 %212, %214
  %conv181 = sitofp i32 %sub to double
  %215 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight182 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %215, i32 0, i32 10
  %216 = load i32, i32* %selectionHeight182, align 4
  %sub183 = sub nsw i32 %216, 1
  %conv184 = sitofp i32 %sub183 to double
  %div = fdiv double %conv181, %conv184
  %call185 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.173
  %217 = load i32, i32* %y, align 4
  %inc187 = add nsw i32 %217, 1
  store i32 %inc187, i32* %y, align 4
  br label %for.cond.128

for.end.188:                                      ; preds = %for.cond.128
  %218 = load i8*, i8** %resultRow, align 8
  call void @g_free(i8* %218)
  %219 = load i8*, i8** %source1Row, align 8
  call void @g_free(i8* %219)
  %220 = load i8*, i8** %source2Row, align 8
  call void @g_free(i8* %220)
  %221 = load i8*, i8** %depthMap1Row, align 8
  call void @g_free(i8* %221)
  %222 = load i8*, i8** %depthMap2Row, align 8
  call void @g_free(i8* %222)
  %223 = load i8*, i8** %tempRow, align 8
  call void @g_free(i8* %223)
  %call189 = call i32 @gimp_progress_update(double 1.000000e+00)
  %224 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable190 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %224, i32 0, i32 2
  %225 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable190, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %225)
  %226 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable191 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %226, i32 0, i32 2
  %227 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable191, align 8
  %drawable_id192 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %227, i32 0, i32 0
  %228 = load i32, i32* %drawable_id192, align 4
  %call193 = call i32 @gimp_drawable_merge_shadow(i32 %228, i32 1)
  %229 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable194 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %229, i32 0, i32 2
  %230 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable194, align 8
  %drawable_id195 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %230, i32 0, i32 0
  %231 = load i32, i32* %drawable_id195, align 4
  %232 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX196 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %232, i32 0, i32 7
  %233 = load i32, i32* %selectionX196, align 4
  %234 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY197 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %234, i32 0, i32 8
  %235 = load i32, i32* %selectionY197, align 4
  %236 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth198 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %236, i32 0, i32 9
  %237 = load i32, i32* %selectionWidth198, align 4
  %238 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight199 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %238, i32 0, i32 10
  %239 = load i32, i32* %selectionHeight199, align 4
  %call200 = call i32 @gimp_drawable_update(i32 %231, i32 %233, i32 %235, i32 %237, i32 %239)
  ret i32 1
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @DepthMerge_destroy(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 0
  %1 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %cmp = icmp ne %struct._DepthMergeInterface* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 0
  %3 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface1, align 8
  %previewSource1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %3, i32 0, i32 5
  %4 = load i8*, i8** %previewSource1, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface2 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %5, i32 0, i32 0
  %6 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface2, align 8
  %previewSource2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %6, i32 0, i32 6
  %7 = load i8*, i8** %previewSource2, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 0
  %9 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface3, align 8
  %previewDepthMap1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %9, i32 0, i32 7
  %10 = load i8*, i8** %previewDepthMap1, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %11, i32 0, i32 0
  %12 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface4, align 8
  %previewDepthMap2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %12, i32 0, i32 8
  %13 = load i8*, i8** %previewDepthMap2, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface5 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %14, i32 0, i32 0
  %15 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface5, align 8
  %16 = bitcast %struct._DepthMergeInterface* %15 to i8*
  call void @g_free(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %17, i32 0, i32 2
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable, align 8
  %cmp6 = icmp ne %struct._GimpDrawable* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %resultDrawable8 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 2
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %resultDrawable8, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %21 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %21, i32 0, i32 3
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable, align 8
  %cmp10 = icmp ne %struct._GimpDrawable* %22, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %23 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %23, i32 0, i32 3
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable12, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %25 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %25, i32 0, i32 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable, align 8
  %cmp14 = icmp ne %struct._GimpDrawable* %26, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %27 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable16 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %27, i32 0, i32 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable16, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %29 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %29, i32 0, i32 5
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable, align 8
  %cmp18 = icmp ne %struct._GimpDrawable* %30, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %31 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable20 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %31, i32 0, i32 5
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable20, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %33 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %33, i32 0, i32 6
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable, align 8
  %cmp22 = icmp ne %struct._GimpDrawable* %34, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %35 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable24 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %35, i32 0, i32 6
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable24, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %36)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

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

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @DepthMerge_buildPreviewSourceImage(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 0
  %1 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %1, i32 0, i32 3
  %2 = load i32, i32* %previewWidth, align 4
  %3 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %3, i32 0, i32 0
  %4 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface1, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %4, i32 0, i32 4
  %5 = load i32, i32* %previewHeight, align 4
  %mul = mul nsw i32 %2, %5
  %mul2 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul2 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface3 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %6, i32 0, i32 0
  %7 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface3, align 8
  %previewSource1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %7, i32 0, i32 5
  store i8* %call, i8** %previewSource1, align 8
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 0
  %9 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface4, align 8
  %previewSource15 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %9, i32 0, i32 5
  %10 = load i8*, i8** %previewSource15, align 8
  %11 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %11, i32 0, i32 0
  %12 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface6, align 8
  %previewWidth7 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %12, i32 0, i32 3
  %13 = load i32, i32* %previewWidth7, align 4
  %14 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface8 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %14, i32 0, i32 0
  %15 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface8, align 8
  %previewHeight9 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %15, i32 0, i32 4
  %16 = load i32, i32* %previewHeight9, align 4
  %17 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %17, i32 0, i32 3
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable, align 8
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 7
  %20 = load i32, i32* %selectionX, align 4
  %21 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %21, i32 0, i32 8
  %22 = load i32, i32* %selectionY, align 4
  %23 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %23, i32 0, i32 9
  %24 = load i32, i32* %selectionWidth, align 4
  %25 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %25, i32 0, i32 10
  %26 = load i32, i32* %selectionHeight, align 4
  call void @util_fillReducedBuffer(i8* %10, i32 %13, i32 %16, i32 4, i32 1, %struct._GimpDrawable* %18, i32 %20, i32 %22, i32 %24, i32 %26)
  %27 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %27, i32 0, i32 0
  %28 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface10, align 8
  %previewWidth11 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %28, i32 0, i32 3
  %29 = load i32, i32* %previewWidth11, align 4
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 0
  %31 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface12, align 8
  %previewHeight13 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %31, i32 0, i32 4
  %32 = load i32, i32* %previewHeight13, align 4
  %mul14 = mul nsw i32 %29, %32
  %mul15 = mul nsw i32 %mul14, 4
  %conv16 = sext i32 %mul15 to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv16, i64 1)
  %33 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface18 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %33, i32 0, i32 0
  %34 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface18, align 8
  %previewSource2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %34, i32 0, i32 6
  store i8* %call17, i8** %previewSource2, align 8
  %35 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface19 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %35, i32 0, i32 0
  %36 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface19, align 8
  %previewSource220 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %36, i32 0, i32 6
  %37 = load i8*, i8** %previewSource220, align 8
  %38 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface21 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %38, i32 0, i32 0
  %39 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface21, align 8
  %previewWidth22 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %39, i32 0, i32 3
  %40 = load i32, i32* %previewWidth22, align 4
  %41 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface23 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %41, i32 0, i32 0
  %42 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface23, align 8
  %previewHeight24 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %42, i32 0, i32 4
  %43 = load i32, i32* %previewHeight24, align 4
  %44 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %44, i32 0, i32 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable, align 8
  %46 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX25 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %46, i32 0, i32 7
  %47 = load i32, i32* %selectionX25, align 4
  %48 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY26 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %48, i32 0, i32 8
  %49 = load i32, i32* %selectionY26, align 4
  %50 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth27 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %50, i32 0, i32 9
  %51 = load i32, i32* %selectionWidth27, align 4
  %52 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight28 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %52, i32 0, i32 10
  %53 = load i32, i32* %selectionHeight28, align 4
  call void @util_fillReducedBuffer(i8* %37, i32 %40, i32 %43, i32 4, i32 1, %struct._GimpDrawable* %45, i32 %47, i32 %49, i32 %51, i32 %53)
  %54 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface29 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %54, i32 0, i32 0
  %55 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface29, align 8
  %previewWidth30 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %55, i32 0, i32 3
  %56 = load i32, i32* %previewWidth30, align 4
  %57 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface31 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %57, i32 0, i32 0
  %58 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface31, align 8
  %previewHeight32 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %58, i32 0, i32 4
  %59 = load i32, i32* %previewHeight32, align 4
  %mul33 = mul nsw i32 %56, %59
  %mul34 = mul nsw i32 %mul33, 1
  %conv35 = sext i32 %mul34 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 1)
  %60 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface37 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %60, i32 0, i32 0
  %61 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface37, align 8
  %previewDepthMap1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %61, i32 0, i32 7
  store i8* %call36, i8** %previewDepthMap1, align 8
  %62 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface38 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %62, i32 0, i32 0
  %63 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface38, align 8
  %previewDepthMap139 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %63, i32 0, i32 7
  %64 = load i8*, i8** %previewDepthMap139, align 8
  %65 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface40 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %65, i32 0, i32 0
  %66 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface40, align 8
  %previewWidth41 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %66, i32 0, i32 3
  %67 = load i32, i32* %previewWidth41, align 4
  %68 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface42 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %68, i32 0, i32 0
  %69 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface42, align 8
  %previewHeight43 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %69, i32 0, i32 4
  %70 = load i32, i32* %previewHeight43, align 4
  %71 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %71, i32 0, i32 5
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable, align 8
  %73 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX44 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %73, i32 0, i32 7
  %74 = load i32, i32* %selectionX44, align 4
  %75 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY45 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %75, i32 0, i32 8
  %76 = load i32, i32* %selectionY45, align 4
  %77 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth46 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %77, i32 0, i32 9
  %78 = load i32, i32* %selectionWidth46, align 4
  %79 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight47 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %79, i32 0, i32 10
  %80 = load i32, i32* %selectionHeight47, align 4
  call void @util_fillReducedBuffer(i8* %64, i32 %67, i32 %70, i32 1, i32 0, %struct._GimpDrawable* %72, i32 %74, i32 %76, i32 %78, i32 %80)
  %81 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface48 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %81, i32 0, i32 0
  %82 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface48, align 8
  %previewWidth49 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %82, i32 0, i32 3
  %83 = load i32, i32* %previewWidth49, align 4
  %84 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface50 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %84, i32 0, i32 0
  %85 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface50, align 8
  %previewHeight51 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %85, i32 0, i32 4
  %86 = load i32, i32* %previewHeight51, align 4
  %mul52 = mul nsw i32 %83, %86
  %mul53 = mul nsw i32 %mul52, 1
  %conv54 = sext i32 %mul53 to i64
  %call55 = call noalias i8* @g_malloc_n(i64 %conv54, i64 1)
  %87 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface56 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %87, i32 0, i32 0
  %88 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface56, align 8
  %previewDepthMap2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %88, i32 0, i32 8
  store i8* %call55, i8** %previewDepthMap2, align 8
  %89 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface57 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %89, i32 0, i32 0
  %90 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface57, align 8
  %previewDepthMap258 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %90, i32 0, i32 8
  %91 = load i8*, i8** %previewDepthMap258, align 8
  %92 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface59 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %92, i32 0, i32 0
  %93 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface59, align 8
  %previewWidth60 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %93, i32 0, i32 3
  %94 = load i32, i32* %previewWidth60, align 4
  %95 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface61 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %95, i32 0, i32 0
  %96 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface61, align 8
  %previewHeight62 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %96, i32 0, i32 4
  %97 = load i32, i32* %previewHeight62, align 4
  %98 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %98, i32 0, i32 6
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable, align 8
  %100 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX63 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %100, i32 0, i32 7
  %101 = load i32, i32* %selectionX63, align 4
  %102 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY64 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %102, i32 0, i32 8
  %103 = load i32, i32* %selectionY64, align 4
  %104 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth65 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %104, i32 0, i32 9
  %105 = load i32, i32* %selectionWidth65, align 4
  %106 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight66 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %106, i32 0, i32 10
  %107 = load i32, i32* %selectionHeight66, align 4
  call void @util_fillReducedBuffer(i8* %91, i32 %94, i32 %97, i32 1, i32 0, %struct._GimpDrawable* %99, i32 %101, i32 %103, i32 %105, i32 %107)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dm_constraint(i32 %imageId, i32 %drawableId, i8* %data) #0 {
entry:
  %imageId.addr = alloca i32, align 4
  %drawableId.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dm = alloca %struct._DepthMerge*, align 8
  store i32 %imageId, i32* %imageId.addr, align 4
  store i32 %drawableId, i32* %drawableId.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._DepthMerge*
  store %struct._DepthMerge* %1, %struct._DepthMerge** %dm, align 8
  %2 = load i32, i32* %drawableId.addr, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %lor.end.17, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %drawableId.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %3)
  %4 = load %struct._DepthMerge*, %struct._DepthMerge** %dm, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %4, i32 0, i32 1
  %result = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 0
  %5 = load i32, i32* %result, align 4
  %call1 = call i32 @gimp_drawable_width(i32 %5)
  %cmp2 = icmp eq i32 %call, %call1
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.rhs
  %6 = load i32, i32* %drawableId.addr, align 4
  %call3 = call i32 @gimp_drawable_height(i32 %6)
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %result5 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 0
  %8 = load i32, i32* %result5, align 4
  %call6 = call i32 @gimp_drawable_height(i32 %8)
  %cmp7 = icmp eq i32 %call3, %call6
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %drawableId.addr, align 4
  %call8 = call i32 @gimp_drawable_is_rgb(i32 %9)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %land.lhs.true.9, label %lor.rhs.14

land.lhs.true.9:                                  ; preds = %land.rhs
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm, align 8
  %params10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %result11 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params10, i32 0, i32 0
  %11 = load i32, i32* %result11, align 4
  %call12 = call i32 @gimp_drawable_is_rgb(i32 %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.end, label %lor.rhs.14

lor.rhs.14:                                       ; preds = %land.lhs.true.9, %land.rhs
  %12 = load i32, i32* %drawableId.addr, align 4
  %call15 = call i32 @gimp_drawable_is_gray(i32 %12)
  %tobool16 = icmp ne i32 %call15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.14, %land.lhs.true.9
  %13 = phi i1 [ true, %land.lhs.true.9 ], [ %tobool16, %lor.rhs.14 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %lor.rhs
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %13, %lor.end ]
  br label %lor.end.17

lor.end.17:                                       ; preds = %land.end, %entry
  %15 = phi i1 [ true, %entry ], [ %14, %land.end ]
  %lor.ext = zext i1 %15 to i32
  ret i32 %lor.ext
}

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @dialogSource1ChangedCallback(%struct._GtkWidget* %widget, %struct._DepthMerge* %dm) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 3
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 3
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable1, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %source1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 1
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %6, i32* %source1)
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %source15 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 1
  %9 = load i32, i32* %source15, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %source17 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 1
  %11 = load i32, i32* %source17, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDrawable* [ null, %cond.true ], [ %call8, %cond.false ]
  %12 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable9 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %12, i32 0, i32 3
  store %struct._GimpDrawable* %cond, %struct._GimpDrawable** %source1Drawable9, align 8
  %13 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %13, i32 0, i32 0
  %14 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %previewSource1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %14, i32 0, i32 5
  %15 = load i8*, i8** %previewSource1, align 8
  %16 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %16, i32 0, i32 0
  %17 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface10, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %17, i32 0, i32 3
  %18 = load i32, i32* %previewWidth, align 4
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 0
  %20 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface11, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %20, i32 0, i32 4
  %21 = load i32, i32* %previewHeight, align 4
  %22 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source1Drawable12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %22, i32 0, i32 3
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source1Drawable12, align 8
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 7
  %25 = load i32, i32* %selectionX, align 4
  %26 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %26, i32 0, i32 8
  %27 = load i32, i32* %selectionY, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 9
  %29 = load i32, i32* %selectionWidth, align 4
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 10
  %31 = load i32, i32* %selectionHeight, align 4
  call void @util_fillReducedBuffer(i8* %15, i32 %18, i32 %21, i32 4, i32 1, %struct._GimpDrawable* %23, i32 %25, i32 %27, i32 %29, i32 %31)
  %32 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialogDepthMap1ChangedCallback(%struct._GtkWidget* %widget, %struct._DepthMerge* %dm) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 5
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 5
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable1, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %depthMap1 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 3
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %6, i32* %depthMap1)
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %depthMap15 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 3
  %9 = load i32, i32* %depthMap15, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %depthMap17 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 3
  %11 = load i32, i32* %depthMap17, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDrawable* [ null, %cond.true ], [ %call8, %cond.false ]
  %12 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable9 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %12, i32 0, i32 5
  store %struct._GimpDrawable* %cond, %struct._GimpDrawable** %depthMap1Drawable9, align 8
  %13 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %13, i32 0, i32 0
  %14 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %previewDepthMap1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %14, i32 0, i32 7
  %15 = load i8*, i8** %previewDepthMap1, align 8
  %16 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %16, i32 0, i32 0
  %17 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface10, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %17, i32 0, i32 3
  %18 = load i32, i32* %previewWidth, align 4
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 0
  %20 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface11, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %20, i32 0, i32 4
  %21 = load i32, i32* %previewHeight, align 4
  %22 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap1Drawable12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %22, i32 0, i32 5
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap1Drawable12, align 8
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 7
  %25 = load i32, i32* %selectionX, align 4
  %26 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %26, i32 0, i32 8
  %27 = load i32, i32* %selectionY, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 9
  %29 = load i32, i32* %selectionWidth, align 4
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 10
  %31 = load i32, i32* %selectionHeight, align 4
  call void @util_fillReducedBuffer(i8* %15, i32 %18, i32 %21, i32 1, i32 0, %struct._GimpDrawable* %23, i32 %25, i32 %27, i32 %29, i32 %31)
  %32 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialogSource2ChangedCallback(%struct._GtkWidget* %widget, %struct._DepthMerge* %dm) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 4
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable1, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %source2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 2
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %6, i32* %source2)
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %source25 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 2
  %9 = load i32, i32* %source25, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %source27 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 2
  %11 = load i32, i32* %source27, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDrawable* [ null, %cond.true ], [ %call8, %cond.false ]
  %12 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable9 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %12, i32 0, i32 4
  store %struct._GimpDrawable* %cond, %struct._GimpDrawable** %source2Drawable9, align 8
  %13 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %13, i32 0, i32 0
  %14 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %previewSource2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %14, i32 0, i32 6
  %15 = load i8*, i8** %previewSource2, align 8
  %16 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %16, i32 0, i32 0
  %17 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface10, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %17, i32 0, i32 3
  %18 = load i32, i32* %previewWidth, align 4
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 0
  %20 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface11, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %20, i32 0, i32 4
  %21 = load i32, i32* %previewHeight, align 4
  %22 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %source2Drawable12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %22, i32 0, i32 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %source2Drawable12, align 8
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 7
  %25 = load i32, i32* %selectionX, align 4
  %26 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %26, i32 0, i32 8
  %27 = load i32, i32* %selectionY, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 9
  %29 = load i32, i32* %selectionWidth, align 4
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 10
  %31 = load i32, i32* %selectionHeight, align 4
  call void @util_fillReducedBuffer(i8* %15, i32 %18, i32 %21, i32 4, i32 1, %struct._GimpDrawable* %23, i32 %25, i32 %27, i32 %29, i32 %31)
  %32 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialogDepthMap2ChangedCallback(%struct._GtkWidget* %widget, %struct._DepthMerge* %dm) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dm.addr = alloca %struct._DepthMerge*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 6
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 6
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable1, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %7 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %7, i32 0, i32 1
  %depthMap2 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 4
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %6, i32* %depthMap2)
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %depthMap25 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params4, i32 0, i32 4
  %9 = load i32, i32* %depthMap25, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %depthMap27 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 4
  %11 = load i32, i32* %depthMap27, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDrawable* [ null, %cond.true ], [ %call8, %cond.false ]
  %12 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable9 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %12, i32 0, i32 6
  store %struct._GimpDrawable* %cond, %struct._GimpDrawable** %depthMap2Drawable9, align 8
  %13 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %13, i32 0, i32 0
  %14 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %previewDepthMap2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %14, i32 0, i32 8
  %15 = load i8*, i8** %previewDepthMap2, align 8
  %16 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %16, i32 0, i32 0
  %17 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface10, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %17, i32 0, i32 3
  %18 = load i32, i32* %previewWidth, align 4
  %19 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %19, i32 0, i32 0
  %20 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface11, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %20, i32 0, i32 4
  %21 = load i32, i32* %previewHeight, align 4
  %22 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %depthMap2Drawable12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %22, i32 0, i32 6
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %depthMap2Drawable12, align 8
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionX = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 7
  %25 = load i32, i32* %selectionX, align 4
  %26 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionY = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %26, i32 0, i32 8
  %27 = load i32, i32* %selectionY, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionWidth = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 9
  %29 = load i32, i32* %selectionWidth, align 4
  %30 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %selectionHeight = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %30, i32 0, i32 10
  %31 = load i32, i32* %selectionHeight, align 4
  call void @util_fillReducedBuffer(i8* %15, i32 %18, i32 %21, i32 1, i32 0, %struct._GimpDrawable* %23, i32 %25, i32 %27, i32 %29, i32 %31)
  %32 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %32)
  ret void
}

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialogValueScaleUpdateCallback(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %dm = alloca %struct._DepthMerge*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._DepthMerge*
  store %struct._DepthMerge* %3, %struct._DepthMerge** %dm, align 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  call void @gimp_float_adjustment_update(%struct._GtkAdjustment* %4, i8* %5)
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm, align 8
  call void @DepthMerge_updatePreview(%struct._DepthMerge* %6)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DepthMerge_updatePreview(%struct._DepthMerge* %dm) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  %y = alloca i32, align 4
  %source1Row = alloca i8*, align 8
  %source2Row = alloca i8*, align 8
  %depthMap1Row = alloca i8*, align 8
  %depthMap2Row = alloca i8*, align 8
  %resultRGBA = alloca i8*, align 8
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  %0 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %0, i32 0, i32 0
  %1 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface, align 8
  %active = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %1, i32 0, i32 0
  %2 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface1 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %3, i32 0, i32 0
  %4 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface1, align 8
  %previewWidth = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %4, i32 0, i32 3
  %5 = load i32, i32* %previewWidth, align 4
  %mul = mul nsw i32 4, %5
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface2 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %6, i32 0, i32 0
  %7 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface2, align 8
  %previewHeight = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %7, i32 0, i32 4
  %8 = load i32, i32* %previewHeight, align 4
  %mul3 = mul nsw i32 %mul, %8
  %conv = sext i32 %mul3 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %resultRGBA, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %y, align 4
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface4 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 0
  %11 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface4, align 8
  %previewHeight5 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %11, i32 0, i32 4
  %12 = load i32, i32* %previewHeight5, align 4
  %cmp = icmp slt i32 %9, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %y, align 4
  %14 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface7 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %14, i32 0, i32 0
  %15 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface7, align 8
  %previewWidth8 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %15, i32 0, i32 3
  %16 = load i32, i32* %previewWidth8, align 4
  %mul9 = mul nsw i32 %13, %16
  %mul10 = mul nsw i32 %mul9, 4
  %idxprom = sext i32 %mul10 to i64
  %17 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface11 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %17, i32 0, i32 0
  %18 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface11, align 8
  %previewSource1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %18, i32 0, i32 5
  %19 = load i8*, i8** %previewSource1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8* %arrayidx, i8** %source1Row, align 8
  %20 = load i32, i32* %y, align 4
  %21 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface12 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %21, i32 0, i32 0
  %22 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface12, align 8
  %previewWidth13 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %22, i32 0, i32 3
  %23 = load i32, i32* %previewWidth13, align 4
  %mul14 = mul nsw i32 %20, %23
  %mul15 = mul nsw i32 %mul14, 4
  %idxprom16 = sext i32 %mul15 to i64
  %24 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface17 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %24, i32 0, i32 0
  %25 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface17, align 8
  %previewSource2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %25, i32 0, i32 6
  %26 = load i8*, i8** %previewSource2, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 %idxprom16
  store i8* %arrayidx18, i8** %source2Row, align 8
  %27 = load i32, i32* %y, align 4
  %28 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface19 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %28, i32 0, i32 0
  %29 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface19, align 8
  %previewWidth20 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %29, i32 0, i32 3
  %30 = load i32, i32* %previewWidth20, align 4
  %mul21 = mul nsw i32 %27, %30
  %idxprom22 = sext i32 %mul21 to i64
  %31 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface23 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %31, i32 0, i32 0
  %32 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface23, align 8
  %previewDepthMap1 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %32, i32 0, i32 7
  %33 = load i8*, i8** %previewDepthMap1, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %33, i64 %idxprom22
  store i8* %arrayidx24, i8** %depthMap1Row, align 8
  %34 = load i32, i32* %y, align 4
  %35 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface25 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %35, i32 0, i32 0
  %36 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface25, align 8
  %previewWidth26 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %36, i32 0, i32 3
  %37 = load i32, i32* %previewWidth26, align 4
  %mul27 = mul nsw i32 %34, %37
  %idxprom28 = sext i32 %mul27 to i64
  %38 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface29 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %38, i32 0, i32 0
  %39 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface29, align 8
  %previewDepthMap2 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %39, i32 0, i32 8
  %40 = load i8*, i8** %previewDepthMap2, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %40, i64 %idxprom28
  store i8* %arrayidx30, i8** %depthMap2Row, align 8
  %41 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %42 = load i8*, i8** %source1Row, align 8
  %43 = load i8*, i8** %source2Row, align 8
  %44 = load i8*, i8** %depthMap1Row, align 8
  %45 = load i8*, i8** %depthMap2Row, align 8
  %46 = load i8*, i8** %resultRGBA, align 8
  %47 = load i32, i32* %y, align 4
  %mul31 = mul nsw i32 4, %47
  %48 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface32 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %48, i32 0, i32 0
  %49 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface32, align 8
  %previewWidth33 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %49, i32 0, i32 3
  %50 = load i32, i32* %previewWidth33, align 4
  %mul34 = mul nsw i32 %mul31, %50
  %idx.ext = sext i32 %mul34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  %51 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface35 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %51, i32 0, i32 0
  %52 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface35, align 8
  %previewWidth36 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %52, i32 0, i32 3
  %53 = load i32, i32* %previewWidth36, align 4
  call void @DepthMerge_executeRegion(%struct._DepthMerge* %41, i8* %42, i8* %43, i8* %44, i8* %45, i8* %add.ptr, i32 %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %y, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface37 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %55, i32 0, i32 0
  %56 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface37, align 8
  %preview = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %56, i32 0, i32 2
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_preview_area_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpPreviewArea*
  %60 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface40 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %60, i32 0, i32 0
  %61 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface40, align 8
  %previewWidth41 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %61, i32 0, i32 3
  %62 = load i32, i32* %previewWidth41, align 4
  %63 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface42 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %63, i32 0, i32 0
  %64 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface42, align 8
  %previewHeight43 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %64, i32 0, i32 4
  %65 = load i32, i32* %previewHeight43, align 4
  %66 = load i8*, i8** %resultRGBA, align 8
  %67 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %interface44 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %67, i32 0, i32 0
  %68 = load %struct._DepthMergeInterface*, %struct._DepthMergeInterface** %interface44, align 8
  %previewWidth45 = getelementptr inbounds %struct._DepthMergeInterface, %struct._DepthMergeInterface* %68, i32 0, i32 3
  %69 = load i32, i32* %previewWidth45, align 4
  %mul46 = mul nsw i32 %69, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %59, i32 0, i32 0, i32 %62, i32 %65, i32 1, i8* %66, i32 %mul46)
  %70 = load i8*, i8** %resultRGBA, align 8
  call void @g_free(i8* %70)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @util_fillReducedBuffer(i8* %dest, i32 %destWidth, i32 %destHeight, i32 %destBPP, i32 %destHasAlpha, %struct._GimpDrawable* %sourceDrawable, i32 %x0, i32 %y0, i32 %sourceWidth, i32 %sourceHeight) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %destWidth.addr = alloca i32, align 4
  %destHeight.addr = alloca i32, align 4
  %destBPP.addr = alloca i32, align 4
  %destHasAlpha.addr = alloca i32, align 4
  %sourceDrawable.addr = alloca %struct._GimpDrawable*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %sourceWidth.addr = alloca i32, align 4
  %sourceHeight.addr = alloca i32, align 4
  %rgn = alloca %struct._GimpPixelRgn, align 8
  %sourceBuffer = alloca i8*, align 8
  %reducedRowBuffer = alloca i8*, align 8
  %sourceBufferPos = alloca i8*, align 8
  %reducedRowBufferPos = alloca i8*, align 8
  %sourceBufferRow = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %yPrime = alloca i32, align 4
  %sourceHasAlpha = alloca i32, align 4
  %sourceBpp = alloca i32, align 4
  %sourceRowOffsetLookup = alloca i32*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %destWidth, i32* %destWidth.addr, align 4
  store i32 %destHeight, i32* %destHeight.addr, align 4
  store i32 %destBPP, i32* %destBPP.addr, align 4
  store i32 %destHasAlpha, i32* %destHasAlpha.addr, align 4
  store %struct._GimpDrawable* %sourceDrawable, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %sourceWidth, i32* %sourceWidth.addr, align 4
  store i32 %sourceHeight, i32* %sourceHeight.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  %cmp = icmp eq %struct._GimpDrawable* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %sourceWidth.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %sourceHeight.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %destWidth.addr, align 4
  %5 = load i32, i32* %destHeight.addr, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %destBPP.addr, align 4
  %mul4 = mul nsw i32 %mul, %6
  %cmp5 = icmp slt i32 %3, %mul4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %x, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  store i32 %11, i32* %sourceBpp, align 4
  %12 = load i32, i32* %sourceWidth.addr, align 4
  %13 = load i32, i32* %sourceHeight.addr, align 4
  %mul6 = mul nsw i32 %12, %13
  %14 = load i32, i32* %sourceBpp, align 4
  %mul7 = mul nsw i32 %mul6, %14
  %conv = sext i32 %mul7 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %sourceBuffer, align 8
  %15 = load i32, i32* %destWidth.addr, align 4
  %16 = load i32, i32* %sourceBpp, align 4
  %mul8 = mul nsw i32 %15, %16
  %conv9 = sext i32 %mul8 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv9, i64 1)
  store i8* %call10, i8** %reducedRowBuffer, align 8
  %17 = load i32, i32* %destWidth.addr, align 4
  %conv11 = sext i32 %17 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv11, i64 4)
  %18 = bitcast i8* %call12 to i32*
  store i32* %18, i32** %sourceRowOffsetLookup, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  %20 = load i32, i32* %x0.addr, align 4
  %21 = load i32, i32* %y0.addr, align 4
  %22 = load i32, i32* %sourceWidth.addr, align 4
  %23 = load i32, i32* %sourceHeight.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %rgn, %struct._GimpDrawable* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %25)
  store i32 %call13, i32* %sourceHasAlpha, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.23, %if.end
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %destWidth.addr, align 4
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.14
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %sourceWidth.addr, align 4
  %sub = sub nsw i32 %29, 1
  %mul18 = mul nsw i32 %28, %sub
  %30 = load i32, i32* %destWidth.addr, align 4
  %sub19 = sub nsw i32 %30, 1
  %div = sdiv i32 %mul18, %sub19
  %31 = load i32, i32* %sourceBpp, align 4
  %mul20 = mul nsw i32 %div, %31
  %32 = load i32, i32* %x, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load i32*, i32** %sourceRowOffsetLookup, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %33, i64 %idxprom21
  store i32 %mul20, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.17
  %34 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %x, align 4
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  %35 = load i8*, i8** %sourceBuffer, align 8
  %36 = load i32, i32* %x0.addr, align 4
  %37 = load i32, i32* %y0.addr, align 4
  %38 = load i32, i32* %sourceWidth.addr, align 4
  %39 = load i32, i32* %sourceHeight.addr, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %rgn, i8* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %y, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.65, %for.end.25
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %destHeight.addr, align 4
  %cmp27 = icmp slt i32 %40, %41
  br i1 %cmp27, label %for.body.29, label %for.end.67

for.body.29:                                      ; preds = %for.cond.26
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %sourceHeight.addr, align 4
  %sub30 = sub nsw i32 %43, 1
  %mul31 = mul nsw i32 %42, %sub30
  %44 = load i32, i32* %destHeight.addr, align 4
  %sub32 = sub nsw i32 %44, 1
  %div33 = sdiv i32 %mul31, %sub32
  store i32 %div33, i32* %yPrime, align 4
  %45 = load i32, i32* %yPrime, align 4
  %46 = load i32, i32* %sourceWidth.addr, align 4
  %mul34 = mul nsw i32 %45, %46
  %47 = load i32, i32* %sourceBpp, align 4
  %mul35 = mul nsw i32 %mul34, %47
  %idxprom36 = sext i32 %mul35 to i64
  %48 = load i8*, i8** %sourceBuffer, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %48, i64 %idxprom36
  store i8* %arrayidx37, i8** %sourceBufferRow, align 8
  %49 = load i8*, i8** %reducedRowBuffer, align 8
  store i8* %49, i8** %reducedRowBufferPos, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.57, %for.body.29
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %destWidth.addr, align 4
  %cmp39 = icmp slt i32 %50, %51
  br i1 %cmp39, label %for.body.41, label %for.end.59

for.body.41:                                      ; preds = %for.cond.38
  %52 = load i8*, i8** %sourceBufferRow, align 8
  %53 = load i32, i32* %x, align 4
  %idxprom42 = sext i32 %53 to i64
  %54 = load i32*, i32** %sourceRowOffsetLookup, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %54, i64 %idxprom42
  %55 = load i32, i32* %arrayidx43, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %sourceBufferPos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %for.body.41
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %sourceBpp, align 4
  %cmp45 = icmp slt i32 %56, %57
  br i1 %cmp45, label %for.body.47, label %for.end.54

for.body.47:                                      ; preds = %for.cond.44
  %58 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load i8*, i8** %sourceBufferPos, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %59, i64 %idxprom48
  %60 = load i8, i8* %arrayidx49, align 1
  %61 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %61 to i64
  %62 = load i8*, i8** %reducedRowBufferPos, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %62, i64 %idxprom50
  store i8 %60, i8* %arrayidx51, align 1
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.47
  %63 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %63, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.44

for.end.54:                                       ; preds = %for.cond.44
  %64 = load i32, i32* %sourceBpp, align 4
  %65 = load i8*, i8** %reducedRowBufferPos, align 8
  %idx.ext55 = sext i32 %64 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %reducedRowBufferPos, align 8
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.54
  %66 = load i32, i32* %x, align 4
  %inc58 = add nsw i32 %66, 1
  store i32 %inc58, i32* %x, align 4
  br label %for.cond.38

for.end.59:                                       ; preds = %for.cond.38
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %destWidth.addr, align 4
  %mul60 = mul nsw i32 %67, %68
  %69 = load i32, i32* %destBPP.addr, align 4
  %mul61 = mul nsw i32 %mul60, %69
  %idxprom62 = sext i32 %mul61 to i64
  %70 = load i8*, i8** %dest.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %70, i64 %idxprom62
  %71 = load i32, i32* %destBPP.addr, align 4
  %72 = load i32, i32* %destHasAlpha.addr, align 4
  %73 = load i8*, i8** %reducedRowBuffer, align 8
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %sourceDrawable.addr, align 8
  %bpp64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %74, i32 0, i32 3
  %75 = load i32, i32* %bpp64, align 4
  %76 = load i32, i32* %sourceHasAlpha, align 4
  %77 = load i32, i32* %destWidth.addr, align 4
  call void @util_convertColorspace(i8* %arrayidx63, i32 %71, i32 %72, i8* %73, i32 %75, i32 %76, i32 %77)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.59
  %78 = load i32, i32* %y, align 4
  %inc66 = add nsw i32 %78, 1
  store i32 %inc66, i32* %y, align 4
  br label %for.cond.26

for.end.67:                                       ; preds = %for.cond.26
  %79 = load i8*, i8** %sourceBuffer, align 8
  call void @g_free(i8* %79)
  %80 = load i8*, i8** %reducedRowBuffer, align 8
  call void @g_free(i8* %80)
  %81 = load i32*, i32** %sourceRowOffsetLookup, align 8
  %82 = bitcast i32* %81 to i8*
  call void @g_free(i8* %82)
  br label %return

return:                                           ; preds = %for.end.67, %for.end
  ret void
}

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @util_convertColorspace(i8* %dest, i32 %destBPP, i32 %destHasAlpha, i8* %source, i32 %sourceBPP, i32 %sourceHasAlpha, i32 %length) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %destBPP.addr = alloca i32, align 4
  %destHasAlpha.addr = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %sourceBPP.addr = alloca i32, align 4
  %sourceHasAlpha.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sourcePos = alloca i32, align 4
  %destPos = alloca i32, align 4
  %accum = alloca i32, align 4
  %sourceColorBPP = alloca i32, align 4
  %destColorBPP = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %destBPP, i32* %destBPP.addr, align 4
  store i32 %destHasAlpha, i32* %destHasAlpha.addr, align 4
  store i8* %source, i8** %source.addr, align 8
  store i32 %sourceBPP, i32* %sourceBPP.addr, align 4
  store i32 %sourceHasAlpha, i32* %sourceHasAlpha.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %sourceHasAlpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %sourceBPP.addr, align 4
  %sub = sub nsw i32 %1, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %sourceBPP.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %sourceColorBPP, align 4
  %3 = load i32, i32* %destHasAlpha.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load i32, i32* %destBPP.addr, align 4
  %sub3 = sub nsw i32 %4, 1
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %5 = load i32, i32* %destBPP.addr, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %sub3, %cond.true.2 ], [ %5, %cond.false.4 ]
  store i32 %cond6, i32* %destColorBPP, align 4
  %6 = load i32, i32* %sourceColorBPP, align 4
  %7 = load i32, i32* %destColorBPP, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.5
  %8 = load i32, i32* %sourceBPP.addr, align 4
  %9 = load i32, i32* %destBPP.addr, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %length.addr, align 4
  %11 = load i32, i32* %sourceBPP.addr, align 4
  %mul = mul nsw i32 %10, %11
  store i32 %mul, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %source.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  store i8 %16, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.169

if.end:                                           ; preds = %land.lhs.true, %cond.end.5
  %20 = load i32, i32* %sourceColorBPP, align 4
  %21 = load i32, i32* %destColorBPP, align 4
  %cmp11 = icmp eq i32 %20, %21
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %sourcePos, align 4
  store i32 0, i32* %destPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.27, %if.then.12
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %length.addr, align 4
  %cmp14 = icmp slt i32 %22, %23
  br i1 %cmp14, label %for.body.15, label %for.end.31

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.24, %for.body.15
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %destColorBPP, align 4
  %cmp17 = icmp slt i32 %24, %25
  br i1 %cmp17, label %for.body.18, label %for.end.26

for.body.18:                                      ; preds = %for.cond.16
  %26 = load i32, i32* %sourcePos, align 4
  %27 = load i32, i32* %j, align 4
  %add = add nsw i32 %26, %27
  %idxprom19 = sext i32 %add to i64
  %28 = load i8*, i8** %source.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %28, i64 %idxprom19
  %29 = load i8, i8* %arrayidx20, align 1
  %30 = load i32, i32* %destPos, align 4
  %31 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %30, %31
  %idxprom22 = sext i32 %add21 to i64
  %32 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 %idxprom22
  store i8 %29, i8* %arrayidx23, align 1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.18
  %33 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %33, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %34 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %i, align 4
  %35 = load i32, i32* %destBPP.addr, align 4
  %36 = load i32, i32* %destPos, align 4
  %add29 = add nsw i32 %36, %35
  store i32 %add29, i32* %destPos, align 4
  %37 = load i32, i32* %sourceBPP.addr, align 4
  %38 = load i32, i32* %sourcePos, align 4
  %add30 = add nsw i32 %38, %37
  store i32 %add30, i32* %sourcePos, align 4
  br label %for.cond.13

for.end.31:                                       ; preds = %for.cond.13
  br label %if.end.139

if.else:                                          ; preds = %if.end
  %39 = load i32, i32* %sourceColorBPP, align 4
  %cmp32 = icmp eq i32 %39, 1
  br i1 %cmp32, label %if.then.33, label %if.else.53

if.then.33:                                       ; preds = %if.else
  store i32 0, i32* %sourcePos, align 4
  store i32 0, i32* %destPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.48, %if.then.33
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %length.addr, align 4
  %cmp35 = icmp slt i32 %40, %41
  br i1 %cmp35, label %for.body.36, label %for.end.52

for.body.36:                                      ; preds = %for.cond.34
  store i32 0, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.45, %for.body.36
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %destColorBPP, align 4
  %cmp38 = icmp slt i32 %42, %43
  br i1 %cmp38, label %for.body.39, label %for.end.47

for.body.39:                                      ; preds = %for.cond.37
  %44 = load i32, i32* %sourcePos, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load i8*, i8** %source.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %45, i64 %idxprom40
  %46 = load i8, i8* %arrayidx41, align 1
  %47 = load i32, i32* %destPos, align 4
  %48 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %47, %48
  %idxprom43 = sext i32 %add42 to i64
  %49 = load i8*, i8** %dest.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %49, i64 %idxprom43
  store i8 %46, i8* %arrayidx44, align 1
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.39
  %50 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.37

for.end.47:                                       ; preds = %for.cond.37
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %51 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, i32* %i, align 4
  %52 = load i32, i32* %destBPP.addr, align 4
  %53 = load i32, i32* %destPos, align 4
  %add50 = add nsw i32 %53, %52
  store i32 %add50, i32* %destPos, align 4
  %54 = load i32, i32* %sourceBPP.addr, align 4
  %55 = load i32, i32* %sourcePos, align 4
  %add51 = add nsw i32 %55, %54
  store i32 %add51, i32* %sourcePos, align 4
  br label %for.cond.34

for.end.52:                                       ; preds = %for.cond.34
  br label %if.end.138

if.else.53:                                       ; preds = %if.else
  %56 = load i32, i32* %destColorBPP, align 4
  %cmp54 = icmp eq i32 %56, 1
  br i1 %cmp54, label %if.then.55, label %if.else.77

if.then.55:                                       ; preds = %if.else.53
  store i32 0, i32* %sourcePos, align 4
  store i32 0, i32* %destPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.72, %if.then.55
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %length.addr, align 4
  %cmp57 = icmp slt i32 %57, %58
  br i1 %cmp57, label %for.body.58, label %for.end.76

for.body.58:                                      ; preds = %for.cond.56
  store i32 0, i32* %accum, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.66, %for.body.58
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %sourceColorBPP, align 4
  %cmp60 = icmp slt i32 %59, %60
  br i1 %cmp60, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.59
  %61 = load i32, i32* %sourcePos, align 4
  %62 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %61, %62
  %idxprom63 = sext i32 %add62 to i64
  %63 = load i8*, i8** %source.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %63, i64 %idxprom63
  %64 = load i8, i8* %arrayidx64, align 1
  %conv = zext i8 %64 to i32
  %65 = load i32, i32* %accum, align 4
  %add65 = add nsw i32 %65, %conv
  store i32 %add65, i32* %accum, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %66 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %66, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond.59

for.end.68:                                       ; preds = %for.cond.59
  %67 = load i32, i32* %accum, align 4
  %68 = load i32, i32* %sourceColorBPP, align 4
  %div = sdiv i32 %67, %68
  %conv69 = trunc i32 %div to i8
  %69 = load i32, i32* %destPos, align 4
  %idxprom70 = sext i32 %69 to i64
  %70 = load i8*, i8** %dest.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %70, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx71, align 1
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.68
  %71 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %71, 1
  store i32 %inc73, i32* %i, align 4
  %72 = load i32, i32* %destBPP.addr, align 4
  %73 = load i32, i32* %destPos, align 4
  %add74 = add nsw i32 %73, %72
  store i32 %add74, i32* %destPos, align 4
  %74 = load i32, i32* %sourceBPP.addr, align 4
  %75 = load i32, i32* %sourcePos, align 4
  %add75 = add nsw i32 %75, %74
  store i32 %add75, i32* %sourcePos, align 4
  br label %for.cond.56

for.end.76:                                       ; preds = %for.cond.56
  br label %if.end.137

if.else.77:                                       ; preds = %if.else.53
  %76 = load i32, i32* %destColorBPP, align 4
  %77 = load i32, i32* %sourceColorBPP, align 4
  %cmp78 = icmp slt i32 %76, %77
  br i1 %cmp78, label %if.then.80, label %if.else.103

if.then.80:                                       ; preds = %if.else.77
  store i32 0, i32* %sourcePos, align 4
  store i32 0, i32* %destPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.98, %if.then.80
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %length.addr, align 4
  %cmp82 = icmp slt i32 %78, %79
  br i1 %cmp82, label %for.body.84, label %for.end.102

for.body.84:                                      ; preds = %for.cond.81
  store i32 0, i32* %j, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.95, %for.body.84
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %destColorBPP, align 4
  %cmp86 = icmp slt i32 %80, %81
  br i1 %cmp86, label %for.body.88, label %for.end.97

for.body.88:                                      ; preds = %for.cond.85
  %82 = load i32, i32* %sourcePos, align 4
  %83 = load i32, i32* %j, align 4
  %add89 = add nsw i32 %82, %83
  %idxprom90 = sext i32 %add89 to i64
  %84 = load i8*, i8** %source.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %84, i64 %idxprom90
  %85 = load i8, i8* %arrayidx91, align 1
  %86 = load i32, i32* %destPos, align 4
  %87 = load i32, i32* %j, align 4
  %add92 = add nsw i32 %86, %87
  %idxprom93 = sext i32 %add92 to i64
  %88 = load i8*, i8** %dest.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %88, i64 %idxprom93
  store i8 %85, i8* %arrayidx94, align 1
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.88
  %89 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %89, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond.85

for.end.97:                                       ; preds = %for.cond.85
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %90 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %90, 1
  store i32 %inc99, i32* %i, align 4
  %91 = load i32, i32* %destBPP.addr, align 4
  %92 = load i32, i32* %destPos, align 4
  %add100 = add nsw i32 %92, %91
  store i32 %add100, i32* %destPos, align 4
  %93 = load i32, i32* %sourceBPP.addr, align 4
  %94 = load i32, i32* %sourcePos, align 4
  %add101 = add nsw i32 %94, %93
  store i32 %add101, i32* %sourcePos, align 4
  br label %for.cond.81

for.end.102:                                      ; preds = %for.cond.81
  br label %if.end.136

if.else.103:                                      ; preds = %if.else.77
  store i32 0, i32* %sourcePos, align 4
  store i32 0, i32* %destPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.131, %if.else.103
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %length.addr, align 4
  %cmp105 = icmp slt i32 %95, %96
  br i1 %cmp105, label %for.body.107, label %for.end.135

for.body.107:                                     ; preds = %for.cond.104
  store i32 0, i32* %j, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.118, %for.body.107
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* %sourceColorBPP, align 4
  %cmp109 = icmp slt i32 %97, %98
  br i1 %cmp109, label %for.body.111, label %for.end.120

for.body.111:                                     ; preds = %for.cond.108
  %99 = load i32, i32* %destPos, align 4
  %100 = load i32, i32* %j, align 4
  %add112 = add nsw i32 %99, %100
  %idxprom113 = sext i32 %add112 to i64
  %101 = load i8*, i8** %source.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %101, i64 %idxprom113
  %102 = load i8, i8* %arrayidx114, align 1
  %103 = load i32, i32* %destPos, align 4
  %104 = load i32, i32* %j, align 4
  %add115 = add nsw i32 %103, %104
  %idxprom116 = sext i32 %add115 to i64
  %105 = load i8*, i8** %dest.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %105, i64 %idxprom116
  store i8 %102, i8* %arrayidx117, align 1
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.111
  %106 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %106, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.108

for.end.120:                                      ; preds = %for.cond.108
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.128, %for.end.120
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %destColorBPP, align 4
  %cmp122 = icmp slt i32 %107, %108
  br i1 %cmp122, label %for.body.124, label %for.end.130

for.body.124:                                     ; preds = %for.cond.121
  %109 = load i32, i32* %destPos, align 4
  %110 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %109, %110
  %idxprom126 = sext i32 %add125 to i64
  %111 = load i8*, i8** %dest.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %111, i64 %idxprom126
  store i8 0, i8* %arrayidx127, align 1
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.124
  %112 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %112, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond.121

for.end.130:                                      ; preds = %for.cond.121
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %113 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %113, 1
  store i32 %inc132, i32* %i, align 4
  %114 = load i32, i32* %destBPP.addr, align 4
  %115 = load i32, i32* %destPos, align 4
  %add133 = add nsw i32 %115, %114
  store i32 %add133, i32* %destPos, align 4
  %116 = load i32, i32* %sourceBPP.addr, align 4
  %117 = load i32, i32* %sourcePos, align 4
  %add134 = add nsw i32 %117, %116
  store i32 %add134, i32* %sourcePos, align 4
  br label %for.cond.104

for.end.135:                                      ; preds = %for.cond.104
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %for.end.102
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %for.end.76
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.end.52
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %for.end.31
  %118 = load i32, i32* %destHasAlpha.addr, align 4
  %tobool140 = icmp ne i32 %118, 0
  br i1 %tobool140, label %if.then.141, label %if.end.169

if.then.141:                                      ; preds = %if.end.139
  %119 = load i32, i32* %sourceHasAlpha.addr, align 4
  %tobool142 = icmp ne i32 %119, 0
  br i1 %tobool142, label %if.then.143, label %if.else.157

if.then.143:                                      ; preds = %if.then.141
  store i32 0, i32* %i, align 4
  %120 = load i32, i32* %destColorBPP, align 4
  store i32 %120, i32* %destPos, align 4
  %121 = load i32, i32* %sourceColorBPP, align 4
  store i32 %121, i32* %sourcePos, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.152, %if.then.143
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %length.addr, align 4
  %cmp145 = icmp slt i32 %122, %123
  br i1 %cmp145, label %for.body.147, label %for.end.156

for.body.147:                                     ; preds = %for.cond.144
  %124 = load i32, i32* %sourcePos, align 4
  %idxprom148 = sext i32 %124 to i64
  %125 = load i8*, i8** %source.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %125, i64 %idxprom148
  %126 = load i8, i8* %arrayidx149, align 1
  %127 = load i32, i32* %destPos, align 4
  %idxprom150 = sext i32 %127 to i64
  %128 = load i8*, i8** %dest.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %128, i64 %idxprom150
  store i8 %126, i8* %arrayidx151, align 1
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.147
  %129 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %129, 1
  store i32 %inc153, i32* %i, align 4
  %130 = load i32, i32* %destBPP.addr, align 4
  %131 = load i32, i32* %destPos, align 4
  %add154 = add nsw i32 %131, %130
  store i32 %add154, i32* %destPos, align 4
  %132 = load i32, i32* %sourceBPP.addr, align 4
  %133 = load i32, i32* %sourcePos, align 4
  %add155 = add nsw i32 %133, %132
  store i32 %add155, i32* %sourcePos, align 4
  br label %for.cond.144

for.end.156:                                      ; preds = %for.cond.144
  br label %if.end.168

if.else.157:                                      ; preds = %if.then.141
  store i32 0, i32* %i, align 4
  %134 = load i32, i32* %destColorBPP, align 4
  store i32 %134, i32* %destPos, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.164, %if.else.157
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %length.addr, align 4
  %cmp159 = icmp slt i32 %135, %136
  br i1 %cmp159, label %for.body.161, label %for.end.167

for.body.161:                                     ; preds = %for.cond.158
  %137 = load i32, i32* %destPos, align 4
  %idxprom162 = sext i32 %137 to i64
  %138 = load i8*, i8** %dest.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %138, i64 %idxprom162
  store i8 -1, i8* %arrayidx163, align 1
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.161
  %139 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %139, 1
  store i32 %inc165, i32* %i, align 4
  %140 = load i32, i32* %destBPP.addr, align 4
  %141 = load i32, i32* %destPos, align 4
  %add166 = add nsw i32 %141, %140
  store i32 %add166, i32* %destPos, align 4
  br label %for.cond.158

for.end.167:                                      ; preds = %for.cond.158
  br label %if.end.168

if.end.168:                                       ; preds = %for.end.167, %for.end.156
  br label %if.end.169

if.end.169:                                       ; preds = %for.end, %if.end.168, %if.end.139
  ret void
}

declare void @g_free(i8*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gimp_float_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DepthMerge_executeRegion(%struct._DepthMerge* %dm, i8* %source1Row, i8* %source2Row, i8* %depthMap1Row, i8* %depthMap2Row, i8* %resultRow, i32 %length) #0 {
entry:
  %dm.addr = alloca %struct._DepthMerge*, align 8
  %source1Row.addr = alloca i8*, align 8
  %source2Row.addr = alloca i8*, align 8
  %depthMap1Row.addr = alloca i8*, align 8
  %depthMap2Row.addr = alloca i8*, align 8
  %resultRow.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %scale1 = alloca float, align 4
  %scale2 = alloca float, align 4
  %offset255 = alloca float, align 4
  %invOverlap255 = alloca float, align 4
  %frac = alloca float, align 4
  %depth1 = alloca float, align 4
  %depth2 = alloca float, align 4
  %c1 = alloca [4 x i16], align 2
  %c2 = alloca [4 x i16], align 2
  %cR1 = alloca [4 x i16], align 2
  %cR2 = alloca [4 x i16], align 2
  %cR = alloca [4 x i16], align 2
  %temp = alloca i16, align 2
  %i = alloca i32, align 4
  %tempInt = alloca i32, align 4
  store %struct._DepthMerge* %dm, %struct._DepthMerge** %dm.addr, align 8
  store i8* %source1Row, i8** %source1Row.addr, align 8
  store i8* %source2Row, i8** %source2Row.addr, align 8
  store i8* %depthMap1Row, i8** %depthMap1Row.addr, align 8
  store i8* %depthMap2Row, i8** %depthMap2Row.addr, align 8
  store i8* %resultRow, i8** %resultRow.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = bitcast [4 x i16]* %cR1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 2, i1 false)
  %1 = bitcast [4 x i16]* %cR2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 2, i1 false)
  %2 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %2, i32 0, i32 1
  %overlap = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params, i32 0, i32 5
  %3 = load float, float* %overlap, align 4
  %conv = fpext float %3 to double
  %cmp = fcmp ogt double %conv, 1.000000e-03
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params2 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %4, i32 0, i32 1
  %overlap3 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params2, i32 0, i32 5
  %5 = load float, float* %overlap3, align 4
  %conv4 = fpext float %5 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv4, %cond.true ], [ 1.000000e-03, %cond.false ]
  %mul = fmul double %cond, 2.550000e+02
  %div = fdiv double 1.000000e+00, %mul
  %conv5 = fptrunc double %div to float
  store float %conv5, float* %invOverlap255, align 4
  %6 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params6 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %6, i32 0, i32 1
  %offset = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params6, i32 0, i32 6
  %7 = load float, float* %offset, align 4
  %mul7 = fmul float %7, 2.550000e+02
  store float %mul7, float* %offset255, align 4
  %8 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params8 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %8, i32 0, i32 1
  %scale19 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params8, i32 0, i32 7
  %9 = load float, float* %scale19, align 4
  store float %9, float* %scale1, align 4
  %10 = load %struct._DepthMerge*, %struct._DepthMerge** %dm.addr, align 8
  %params10 = getelementptr inbounds %struct._DepthMerge, %struct._DepthMerge* %10, i32 0, i32 1
  %scale211 = getelementptr inbounds %struct._DepthMergeParams, %struct._DepthMergeParams* %params10, i32 0, i32 8
  %11 = load float, float* %scale211, align 4
  store float %11, float* %scale2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length.addr, align 4
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %depthMap1Row.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv14 = uitofp i8 %16 to float
  store float %conv14, float* %depth1, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8*, i8** %depthMap2Row.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = uitofp i8 %19 to float
  store float %conv17, float* %depth2, align 4
  %20 = load float, float* %depth2, align 4
  %21 = load float, float* %scale2, align 4
  %mul18 = fmul float %20, %21
  %22 = load float, float* %depth1, align 4
  %23 = load float, float* %scale1, align 4
  %mul19 = fmul float %22, %23
  %24 = load float, float* %offset255, align 4
  %add = fadd float %mul19, %24
  %sub = fsub float %mul18, %add
  %25 = load float, float* %invOverlap255, align 4
  %mul20 = fmul float %sub, %25
  store float %mul20, float* %frac, align 4
  %26 = load float, float* %frac, align 4
  %conv21 = fpext float %26 to double
  %add22 = fadd double %conv21, 1.000000e+00
  %mul23 = fmul double 5.000000e-01, %add22
  %conv24 = fptrunc double %mul23 to float
  store float %conv24, float* %frac, align 4
  %27 = load float, float* %frac, align 4
  %conv25 = fpext float %27 to double
  %cmp26 = fcmp ogt double %conv25, 1.000000e+00
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %for.body
  br label %cond.end.38

cond.false.29:                                    ; preds = %for.body
  %28 = load float, float* %frac, align 4
  %conv30 = fpext float %28 to double
  %cmp31 = fcmp olt double %conv30, 0.000000e+00
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.29
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.false.29
  %29 = load float, float* %frac, align 4
  %conv35 = fpext float %29 to double
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.33
  %cond37 = phi double [ 0.000000e+00, %cond.true.33 ], [ %conv35, %cond.false.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.28
  %cond39 = phi double [ 1.000000e+00, %cond.true.28 ], [ %cond37, %cond.end.36 ]
  %conv40 = fptrunc double %cond39 to float
  store float %conv40, float* %frac, align 4
  %30 = load i32, i32* %i, align 4
  %mul41 = mul nsw i32 4, %30
  %idxprom42 = sext i32 %mul41 to i64
  %31 = load i8*, i8** %source1Row.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %31, i64 %idxprom42
  %32 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %32 to i16
  %arrayidx45 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 0
  store i16 %conv44, i16* %arrayidx45, align 2
  %33 = load i32, i32* %i, align 4
  %mul46 = mul nsw i32 4, %33
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %34 = load i8*, i8** %source1Row.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %34, i64 %idxprom48
  %35 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %35 to i16
  %arrayidx51 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 1
  store i16 %conv50, i16* %arrayidx51, align 2
  %36 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 4, %36
  %add53 = add nsw i32 %mul52, 2
  %idxprom54 = sext i32 %add53 to i64
  %37 = load i8*, i8** %source1Row.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %37, i64 %idxprom54
  %38 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %38 to i16
  %arrayidx57 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 2
  store i16 %conv56, i16* %arrayidx57, align 2
  %39 = load i32, i32* %i, align 4
  %mul58 = mul nsw i32 4, %39
  %add59 = add nsw i32 %mul58, 3
  %idxprom60 = sext i32 %add59 to i64
  %40 = load i8*, i8** %source1Row.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %40, i64 %idxprom60
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %41 to i16
  %arrayidx63 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  store i16 %conv62, i16* %arrayidx63, align 2
  %42 = load i32, i32* %i, align 4
  %mul64 = mul nsw i32 4, %42
  %idxprom65 = sext i32 %mul64 to i64
  %43 = load i8*, i8** %source2Row.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %43, i64 %idxprom65
  %44 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %44 to i16
  %arrayidx68 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 0
  store i16 %conv67, i16* %arrayidx68, align 2
  %45 = load i32, i32* %i, align 4
  %mul69 = mul nsw i32 4, %45
  %add70 = add nsw i32 %mul69, 1
  %idxprom71 = sext i32 %add70 to i64
  %46 = load i8*, i8** %source2Row.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %46, i64 %idxprom71
  %47 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %47 to i16
  %arrayidx74 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 1
  store i16 %conv73, i16* %arrayidx74, align 2
  %48 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 4, %48
  %add76 = add nsw i32 %mul75, 2
  %idxprom77 = sext i32 %add76 to i64
  %49 = load i8*, i8** %source2Row.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %49, i64 %idxprom77
  %50 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %50 to i16
  %arrayidx80 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 2
  store i16 %conv79, i16* %arrayidx80, align 2
  %51 = load i32, i32* %i, align 4
  %mul81 = mul nsw i32 4, %51
  %add82 = add nsw i32 %mul81, 3
  %idxprom83 = sext i32 %add82 to i64
  %52 = load i8*, i8** %source2Row.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %52, i64 %idxprom83
  %53 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %53 to i16
  %arrayidx86 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  store i16 %conv85, i16* %arrayidx86, align 2
  %54 = load float, float* %frac, align 4
  %cmp87 = fcmp une float %54, 0.000000e+00
  br i1 %cmp87, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.38
  %arrayidx89 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %55 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %55 to i32
  %arrayidx91 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 0
  %56 = load i16, i16* %arrayidx91, align 2
  %conv92 = zext i16 %56 to i32
  %mul93 = mul nsw i32 %conv90, %conv92
  %arrayidx94 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %57 = load i16, i16* %arrayidx94, align 2
  %conv95 = zext i16 %57 to i32
  %sub96 = sub nsw i32 255, %conv95
  %arrayidx97 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 0
  %58 = load i16, i16* %arrayidx97, align 2
  %conv98 = zext i16 %58 to i32
  %mul99 = mul nsw i32 %sub96, %conv98
  %add100 = add nsw i32 %mul93, %mul99
  %conv101 = trunc i32 %add100 to i16
  %arrayidx102 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 0
  store i16 %conv101, i16* %arrayidx102, align 2
  %arrayidx103 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %59 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %59 to i32
  %arrayidx105 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 1
  %60 = load i16, i16* %arrayidx105, align 2
  %conv106 = zext i16 %60 to i32
  %mul107 = mul nsw i32 %conv104, %conv106
  %arrayidx108 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %61 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %61 to i32
  %sub110 = sub nsw i32 255, %conv109
  %arrayidx111 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 1
  %62 = load i16, i16* %arrayidx111, align 2
  %conv112 = zext i16 %62 to i32
  %mul113 = mul nsw i32 %sub110, %conv112
  %add114 = add nsw i32 %mul107, %mul113
  %conv115 = trunc i32 %add114 to i16
  %arrayidx116 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 1
  store i16 %conv115, i16* %arrayidx116, align 2
  %arrayidx117 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %63 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %63 to i32
  %arrayidx119 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 2
  %64 = load i16, i16* %arrayidx119, align 2
  %conv120 = zext i16 %64 to i32
  %mul121 = mul nsw i32 %conv118, %conv120
  %arrayidx122 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %65 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %65 to i32
  %sub124 = sub nsw i32 255, %conv123
  %arrayidx125 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 2
  %66 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %66 to i32
  %mul127 = mul nsw i32 %sub124, %conv126
  %add128 = add nsw i32 %mul121, %mul127
  %conv129 = trunc i32 %add128 to i16
  %arrayidx130 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 2
  store i16 %conv129, i16* %arrayidx130, align 2
  %arrayidx131 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %67 = load i16, i16* %arrayidx131, align 2
  %conv132 = zext i16 %67 to i32
  %mul133 = mul nsw i32 %conv132, 256
  %arrayidx134 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %68 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %68 to i32
  %sub136 = sub nsw i32 %mul133, %conv135
  %arrayidx137 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %69 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %69 to i32
  %sub139 = sub nsw i32 255, %conv138
  %arrayidx140 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %70 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %70 to i32
  %mul142 = mul nsw i32 %sub139, %conv141
  %add143 = add nsw i32 %sub136, %mul142
  %conv144 = trunc i32 %add143 to i16
  %arrayidx145 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 3
  store i16 %conv144, i16* %arrayidx145, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.38
  %71 = load float, float* %frac, align 4
  %cmp146 = fcmp une float %71, 1.000000e+00
  br i1 %cmp146, label %if.then.148, label %if.end.206

if.then.148:                                      ; preds = %if.end
  %arrayidx149 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %72 = load i16, i16* %arrayidx149, align 2
  %conv150 = zext i16 %72 to i32
  %arrayidx151 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 0
  %73 = load i16, i16* %arrayidx151, align 2
  %conv152 = zext i16 %73 to i32
  %mul153 = mul nsw i32 %conv150, %conv152
  %arrayidx154 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %74 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %74 to i32
  %sub156 = sub nsw i32 255, %conv155
  %arrayidx157 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 0
  %75 = load i16, i16* %arrayidx157, align 2
  %conv158 = zext i16 %75 to i32
  %mul159 = mul nsw i32 %sub156, %conv158
  %add160 = add nsw i32 %mul153, %mul159
  %conv161 = trunc i32 %add160 to i16
  %arrayidx162 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 0
  store i16 %conv161, i16* %arrayidx162, align 2
  %arrayidx163 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %76 = load i16, i16* %arrayidx163, align 2
  %conv164 = zext i16 %76 to i32
  %arrayidx165 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 1
  %77 = load i16, i16* %arrayidx165, align 2
  %conv166 = zext i16 %77 to i32
  %mul167 = mul nsw i32 %conv164, %conv166
  %arrayidx168 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %78 = load i16, i16* %arrayidx168, align 2
  %conv169 = zext i16 %78 to i32
  %sub170 = sub nsw i32 255, %conv169
  %arrayidx171 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 1
  %79 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %79 to i32
  %mul173 = mul nsw i32 %sub170, %conv172
  %add174 = add nsw i32 %mul167, %mul173
  %conv175 = trunc i32 %add174 to i16
  %arrayidx176 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 1
  store i16 %conv175, i16* %arrayidx176, align 2
  %arrayidx177 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %80 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %80 to i32
  %arrayidx179 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 2
  %81 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %81 to i32
  %mul181 = mul nsw i32 %conv178, %conv180
  %arrayidx182 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %82 = load i16, i16* %arrayidx182, align 2
  %conv183 = zext i16 %82 to i32
  %sub184 = sub nsw i32 255, %conv183
  %arrayidx185 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 2
  %83 = load i16, i16* %arrayidx185, align 2
  %conv186 = zext i16 %83 to i32
  %mul187 = mul nsw i32 %sub184, %conv186
  %add188 = add nsw i32 %mul181, %mul187
  %conv189 = trunc i32 %add188 to i16
  %arrayidx190 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 2
  store i16 %conv189, i16* %arrayidx190, align 2
  %arrayidx191 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %84 = load i16, i16* %arrayidx191, align 2
  %conv192 = zext i16 %84 to i32
  %mul193 = mul nsw i32 %conv192, 256
  %arrayidx194 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %85 = load i16, i16* %arrayidx194, align 2
  %conv195 = zext i16 %85 to i32
  %sub196 = sub nsw i32 %mul193, %conv195
  %arrayidx197 = getelementptr inbounds [4 x i16], [4 x i16]* %c2, i32 0, i64 3
  %86 = load i16, i16* %arrayidx197, align 2
  %conv198 = zext i16 %86 to i32
  %sub199 = sub nsw i32 255, %conv198
  %arrayidx200 = getelementptr inbounds [4 x i16], [4 x i16]* %c1, i32 0, i64 3
  %87 = load i16, i16* %arrayidx200, align 2
  %conv201 = zext i16 %87 to i32
  %mul202 = mul nsw i32 %sub199, %conv201
  %add203 = add nsw i32 %sub196, %mul202
  %conv204 = trunc i32 %add203 to i16
  %arrayidx205 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 3
  store i16 %conv204, i16* %arrayidx205, align 2
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.148, %if.end
  %88 = load float, float* %frac, align 4
  %cmp207 = fcmp oeq float %88, 1.000000e+00
  br i1 %cmp207, label %if.then.209, label %if.else

if.then.209:                                      ; preds = %if.end.206
  %arrayidx210 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 0
  %89 = load i16, i16* %arrayidx210, align 2
  %arrayidx211 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 0
  store i16 %89, i16* %arrayidx211, align 2
  %arrayidx212 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 1
  %90 = load i16, i16* %arrayidx212, align 2
  %arrayidx213 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 1
  store i16 %90, i16* %arrayidx213, align 2
  %arrayidx214 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 2
  %91 = load i16, i16* %arrayidx214, align 2
  %arrayidx215 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 2
  store i16 %91, i16* %arrayidx215, align 2
  %arrayidx216 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 3
  %92 = load i16, i16* %arrayidx216, align 2
  %arrayidx217 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 3
  store i16 %92, i16* %arrayidx217, align 2
  br label %if.end.331

if.else:                                          ; preds = %if.end.206
  %93 = load float, float* %frac, align 4
  %cmp218 = fcmp oeq float %93, 0.000000e+00
  br i1 %cmp218, label %if.then.220, label %if.else.229

if.then.220:                                      ; preds = %if.else
  %arrayidx221 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 0
  %94 = load i16, i16* %arrayidx221, align 2
  %arrayidx222 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 0
  store i16 %94, i16* %arrayidx222, align 2
  %arrayidx223 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 1
  %95 = load i16, i16* %arrayidx223, align 2
  %arrayidx224 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 1
  store i16 %95, i16* %arrayidx224, align 2
  %arrayidx225 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 2
  %96 = load i16, i16* %arrayidx225, align 2
  %arrayidx226 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 2
  store i16 %96, i16* %arrayidx226, align 2
  %arrayidx227 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 3
  %97 = load i16, i16* %arrayidx227, align 2
  %arrayidx228 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 3
  store i16 %97, i16* %arrayidx228, align 2
  br label %if.end.330

if.else.229:                                      ; preds = %if.else
  %98 = load float, float* %frac, align 4
  %arrayidx230 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 0
  %99 = load i16, i16* %arrayidx230, align 2
  %conv231 = zext i16 %99 to i32
  %conv232 = sitofp i32 %conv231 to float
  %mul233 = fmul float %98, %conv232
  %100 = load float, float* %frac, align 4
  %sub234 = fsub float 1.000000e+00, %100
  %arrayidx235 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 0
  %101 = load i16, i16* %arrayidx235, align 2
  %conv236 = zext i16 %101 to i32
  %conv237 = sitofp i32 %conv236 to float
  %mul238 = fmul float %sub234, %conv237
  %add239 = fadd float %mul233, %mul238
  %conv240 = fptosi float %add239 to i32
  store i32 %conv240, i32* %tempInt, align 4
  %102 = load i32, i32* %tempInt, align 4
  %cmp241 = icmp sgt i32 %102, 65025
  br i1 %cmp241, label %cond.true.243, label %cond.false.244

cond.true.243:                                    ; preds = %if.else.229
  br label %cond.end.251

cond.false.244:                                   ; preds = %if.else.229
  %103 = load i32, i32* %tempInt, align 4
  %cmp245 = icmp slt i32 %103, 0
  br i1 %cmp245, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %cond.false.244
  br label %cond.end.249

cond.false.248:                                   ; preds = %cond.false.244
  %104 = load i32, i32* %tempInt, align 4
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.248, %cond.true.247
  %cond250 = phi i32 [ 0, %cond.true.247 ], [ %104, %cond.false.248 ]
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.end.249, %cond.true.243
  %cond252 = phi i32 [ 65025, %cond.true.243 ], [ %cond250, %cond.end.249 ]
  %conv253 = trunc i32 %cond252 to i16
  %arrayidx254 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 0
  store i16 %conv253, i16* %arrayidx254, align 2
  %105 = load float, float* %frac, align 4
  %arrayidx255 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 1
  %106 = load i16, i16* %arrayidx255, align 2
  %conv256 = zext i16 %106 to i32
  %conv257 = sitofp i32 %conv256 to float
  %mul258 = fmul float %105, %conv257
  %107 = load float, float* %frac, align 4
  %sub259 = fsub float 1.000000e+00, %107
  %arrayidx260 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 1
  %108 = load i16, i16* %arrayidx260, align 2
  %conv261 = zext i16 %108 to i32
  %conv262 = sitofp i32 %conv261 to float
  %mul263 = fmul float %sub259, %conv262
  %add264 = fadd float %mul258, %mul263
  %conv265 = fptosi float %add264 to i32
  store i32 %conv265, i32* %tempInt, align 4
  %109 = load i32, i32* %tempInt, align 4
  %cmp266 = icmp sgt i32 %109, 65025
  br i1 %cmp266, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %cond.end.251
  br label %cond.end.276

cond.false.269:                                   ; preds = %cond.end.251
  %110 = load i32, i32* %tempInt, align 4
  %cmp270 = icmp slt i32 %110, 0
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %cond.false.269
  br label %cond.end.274

cond.false.273:                                   ; preds = %cond.false.269
  %111 = load i32, i32* %tempInt, align 4
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.272
  %cond275 = phi i32 [ 0, %cond.true.272 ], [ %111, %cond.false.273 ]
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.end.274, %cond.true.268
  %cond277 = phi i32 [ 65025, %cond.true.268 ], [ %cond275, %cond.end.274 ]
  %conv278 = trunc i32 %cond277 to i16
  %arrayidx279 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 1
  store i16 %conv278, i16* %arrayidx279, align 2
  %112 = load float, float* %frac, align 4
  %arrayidx280 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 2
  %113 = load i16, i16* %arrayidx280, align 2
  %conv281 = zext i16 %113 to i32
  %conv282 = sitofp i32 %conv281 to float
  %mul283 = fmul float %112, %conv282
  %114 = load float, float* %frac, align 4
  %sub284 = fsub float 1.000000e+00, %114
  %arrayidx285 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 2
  %115 = load i16, i16* %arrayidx285, align 2
  %conv286 = zext i16 %115 to i32
  %conv287 = sitofp i32 %conv286 to float
  %mul288 = fmul float %sub284, %conv287
  %add289 = fadd float %mul283, %mul288
  %conv290 = fptosi float %add289 to i32
  store i32 %conv290, i32* %tempInt, align 4
  %116 = load i32, i32* %tempInt, align 4
  %cmp291 = icmp sgt i32 %116, 65025
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %cond.end.276
  br label %cond.end.301

cond.false.294:                                   ; preds = %cond.end.276
  %117 = load i32, i32* %tempInt, align 4
  %cmp295 = icmp slt i32 %117, 0
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %cond.false.294
  br label %cond.end.299

cond.false.298:                                   ; preds = %cond.false.294
  %118 = load i32, i32* %tempInt, align 4
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.298, %cond.true.297
  %cond300 = phi i32 [ 0, %cond.true.297 ], [ %118, %cond.false.298 ]
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.end.299, %cond.true.293
  %cond302 = phi i32 [ 65025, %cond.true.293 ], [ %cond300, %cond.end.299 ]
  %conv303 = trunc i32 %cond302 to i16
  %arrayidx304 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 2
  store i16 %conv303, i16* %arrayidx304, align 2
  %119 = load float, float* %frac, align 4
  %arrayidx305 = getelementptr inbounds [4 x i16], [4 x i16]* %cR1, i32 0, i64 3
  %120 = load i16, i16* %arrayidx305, align 2
  %conv306 = zext i16 %120 to i32
  %conv307 = sitofp i32 %conv306 to float
  %mul308 = fmul float %119, %conv307
  %121 = load float, float* %frac, align 4
  %sub309 = fsub float 1.000000e+00, %121
  %arrayidx310 = getelementptr inbounds [4 x i16], [4 x i16]* %cR2, i32 0, i64 3
  %122 = load i16, i16* %arrayidx310, align 2
  %conv311 = zext i16 %122 to i32
  %conv312 = sitofp i32 %conv311 to float
  %mul313 = fmul float %sub309, %conv312
  %add314 = fadd float %mul308, %mul313
  %conv315 = fptosi float %add314 to i32
  store i32 %conv315, i32* %tempInt, align 4
  %123 = load i32, i32* %tempInt, align 4
  %cmp316 = icmp sgt i32 %123, 65025
  br i1 %cmp316, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %cond.end.301
  br label %cond.end.326

cond.false.319:                                   ; preds = %cond.end.301
  %124 = load i32, i32* %tempInt, align 4
  %cmp320 = icmp slt i32 %124, 0
  br i1 %cmp320, label %cond.true.322, label %cond.false.323

cond.true.322:                                    ; preds = %cond.false.319
  br label %cond.end.324

cond.false.323:                                   ; preds = %cond.false.319
  %125 = load i32, i32* %tempInt, align 4
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.322
  %cond325 = phi i32 [ 0, %cond.true.322 ], [ %125, %cond.false.323 ]
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.end.324, %cond.true.318
  %cond327 = phi i32 [ 65025, %cond.true.318 ], [ %cond325, %cond.end.324 ]
  %conv328 = trunc i32 %cond327 to i16
  %arrayidx329 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 3
  store i16 %conv328, i16* %arrayidx329, align 2
  br label %if.end.330

if.end.330:                                       ; preds = %cond.end.326, %if.then.220
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.209
  %arrayidx332 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 0
  %126 = load i16, i16* %arrayidx332, align 2
  %conv333 = zext i16 %126 to i32
  %arrayidx334 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 0
  %127 = load i16, i16* %arrayidx334, align 2
  %conv335 = zext i16 %127 to i32
  %div336 = sdiv i32 %conv335, 256
  %add337 = add nsw i32 %conv333, %div336
  %add338 = add nsw i32 %add337, 1
  %div339 = sdiv i32 %add338, 256
  %conv340 = trunc i32 %div339 to i16
  store i16 %conv340, i16* %temp, align 2
  %128 = load i16, i16* %temp, align 2
  %conv341 = zext i16 %128 to i32
  %cmp342 = icmp slt i32 %conv341, 255
  br i1 %cmp342, label %cond.true.344, label %cond.false.346

cond.true.344:                                    ; preds = %if.end.331
  %129 = load i16, i16* %temp, align 2
  %conv345 = zext i16 %129 to i32
  br label %cond.end.347

cond.false.346:                                   ; preds = %if.end.331
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.346, %cond.true.344
  %cond348 = phi i32 [ %conv345, %cond.true.344 ], [ 255, %cond.false.346 ]
  %conv349 = trunc i32 %cond348 to i8
  %130 = load i32, i32* %i, align 4
  %mul350 = mul nsw i32 4, %130
  %idxprom351 = sext i32 %mul350 to i64
  %131 = load i8*, i8** %resultRow.addr, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %131, i64 %idxprom351
  store i8 %conv349, i8* %arrayidx352, align 1
  %arrayidx353 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 1
  %132 = load i16, i16* %arrayidx353, align 2
  %conv354 = zext i16 %132 to i32
  %arrayidx355 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 1
  %133 = load i16, i16* %arrayidx355, align 2
  %conv356 = zext i16 %133 to i32
  %div357 = sdiv i32 %conv356, 256
  %add358 = add nsw i32 %conv354, %div357
  %add359 = add nsw i32 %add358, 1
  %div360 = sdiv i32 %add359, 256
  %conv361 = trunc i32 %div360 to i16
  store i16 %conv361, i16* %temp, align 2
  %134 = load i16, i16* %temp, align 2
  %conv362 = zext i16 %134 to i32
  %cmp363 = icmp slt i32 %conv362, 255
  br i1 %cmp363, label %cond.true.365, label %cond.false.367

cond.true.365:                                    ; preds = %cond.end.347
  %135 = load i16, i16* %temp, align 2
  %conv366 = zext i16 %135 to i32
  br label %cond.end.368

cond.false.367:                                   ; preds = %cond.end.347
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.365
  %cond369 = phi i32 [ %conv366, %cond.true.365 ], [ 255, %cond.false.367 ]
  %conv370 = trunc i32 %cond369 to i8
  %136 = load i32, i32* %i, align 4
  %mul371 = mul nsw i32 4, %136
  %add372 = add nsw i32 %mul371, 1
  %idxprom373 = sext i32 %add372 to i64
  %137 = load i8*, i8** %resultRow.addr, align 8
  %arrayidx374 = getelementptr inbounds i8, i8* %137, i64 %idxprom373
  store i8 %conv370, i8* %arrayidx374, align 1
  %arrayidx375 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 2
  %138 = load i16, i16* %arrayidx375, align 2
  %conv376 = zext i16 %138 to i32
  %arrayidx377 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 2
  %139 = load i16, i16* %arrayidx377, align 2
  %conv378 = zext i16 %139 to i32
  %div379 = sdiv i32 %conv378, 256
  %add380 = add nsw i32 %conv376, %div379
  %add381 = add nsw i32 %add380, 1
  %div382 = sdiv i32 %add381, 256
  %conv383 = trunc i32 %div382 to i16
  store i16 %conv383, i16* %temp, align 2
  %140 = load i16, i16* %temp, align 2
  %conv384 = zext i16 %140 to i32
  %cmp385 = icmp slt i32 %conv384, 255
  br i1 %cmp385, label %cond.true.387, label %cond.false.389

cond.true.387:                                    ; preds = %cond.end.368
  %141 = load i16, i16* %temp, align 2
  %conv388 = zext i16 %141 to i32
  br label %cond.end.390

cond.false.389:                                   ; preds = %cond.end.368
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.389, %cond.true.387
  %cond391 = phi i32 [ %conv388, %cond.true.387 ], [ 255, %cond.false.389 ]
  %conv392 = trunc i32 %cond391 to i8
  %142 = load i32, i32* %i, align 4
  %mul393 = mul nsw i32 4, %142
  %add394 = add nsw i32 %mul393, 2
  %idxprom395 = sext i32 %add394 to i64
  %143 = load i8*, i8** %resultRow.addr, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %143, i64 %idxprom395
  store i8 %conv392, i8* %arrayidx396, align 1
  %arrayidx397 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 3
  %144 = load i16, i16* %arrayidx397, align 2
  %conv398 = zext i16 %144 to i32
  %arrayidx399 = getelementptr inbounds [4 x i16], [4 x i16]* %cR, i32 0, i64 3
  %145 = load i16, i16* %arrayidx399, align 2
  %conv400 = zext i16 %145 to i32
  %div401 = sdiv i32 %conv400, 256
  %add402 = add nsw i32 %conv398, %div401
  %add403 = add nsw i32 %add402, 1
  %div404 = sdiv i32 %add403, 256
  %conv405 = trunc i32 %div404 to i16
  store i16 %conv405, i16* %temp, align 2
  %146 = load i16, i16* %temp, align 2
  %conv406 = zext i16 %146 to i32
  %cmp407 = icmp slt i32 %conv406, 255
  br i1 %cmp407, label %cond.true.409, label %cond.false.411

cond.true.409:                                    ; preds = %cond.end.390
  %147 = load i16, i16* %temp, align 2
  %conv410 = zext i16 %147 to i32
  br label %cond.end.412

cond.false.411:                                   ; preds = %cond.end.390
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.411, %cond.true.409
  %cond413 = phi i32 [ %conv410, %cond.true.409 ], [ 255, %cond.false.411 ]
  %conv414 = trunc i32 %cond413 to i8
  %148 = load i32, i32* %i, align 4
  %mul415 = mul nsw i32 4, %148
  %add416 = add nsw i32 %mul415, 3
  %idxprom417 = sext i32 %add416 to i64
  %149 = load i8*, i8** %resultRow.addr, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %149, i64 %idxprom417
  store i8 %conv414, i8* %arrayidx418, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.412
  %150 = load i32, i32* %i, align 4
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @gimp_progress_init(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

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
