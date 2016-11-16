; ModuleID = './plug-ins/common/qbist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GRand = type opaque
%struct.QbistInfo = type { %struct.ExpInfo, i32, [4096 x i8] }
%struct.ExpInfo = type { [36 x i32], [36 x i32], [36 x i32], [36 x i32] }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
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
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkButtonBox = type { %struct._GtkBox, i32, i32, i32, i32, i32 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkFileChooser = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.args = private unnamed_addr constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [14 x i8] c"plug-in-qbist\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Generate a huge variety of abstract patterns\00", align 1
@.str.8 = private unnamed_addr constant [154 x i8] c"This Plug-in is based on an article by J\C3\B6rn Loviscach (appeared in c't 10/95, page 326). It generates modern art pictures from a random genetic formula.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"J\C3\B6rn Loviscach, Jens Ch. Restemeier\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"January 2001, 1.12\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"_Qbist...\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@gr = internal global %struct._GRand* null, align 8
@qbist_info = internal global %struct.QbistInfo zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"Qbist\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"qbist\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"G-Qbist\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gimp-qbist\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@info = internal global [9 x %struct.ExpInfo] zeroinitializer, align 16
@last_info = internal global [9 x %struct.ExpInfo] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@preview = internal global [9 x %struct._GtkWidget*] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [14 x i8] c"_Antialiasing\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Load QBE File\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Save as QBE File\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@used_trans_flag = internal global [36 x i32] zeroinitializer, align 16
@used_reg_flag = internal global [6 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %args = alloca [3 x %struct._GimpParamDef], align 16
  %0 = bitcast [3 x %struct._GimpParamDef]* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x %struct._GimpParamDef]* @query.args to i8*), i64 72, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* %args, i32 0, i32 0
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* %arraydecay, %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
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
  %sel_x1 = alloca i32, align 4
  %sel_y1 = alloca i32, align 4
  %sel_x2 = alloca i32, align 4
  %sel_y2 = alloca i32, align 4
  %img_height = alloca i32, align 4
  %img_width = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %imagePR = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %row = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 3, i32* %status, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %type = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_int32, align 4
  store i32 %5, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %call = call i8* @gimp_locale_directory() #5
  %call2 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #2
  %call3 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #2
  %call4 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #2
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %type6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %type6, align 4
  %cmp7 = icmp ne i32 %7, 16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data11 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  %call12 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %9)
  store %struct._GimpDrawable* %call12, %struct._GimpDrawable** %drawable, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call13 = call i32 @gimp_drawable_width(i32 %11)
  store i32 %call13, i32* %img_width, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_height(i32 %13)
  store i32 %call15, i32* %img_height, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_mask_bounds(i32 %15, i32* %sel_x1, i32* %sel_y1, i32* %sel_x2, i32* %sel_y2)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_is_rgb(i32 %17)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.9
  store i32 1, i32* %status, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.9
  %18 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %18, 3
  br i1 %cmp22, label %if.then.23, label %if.end.71

if.then.23:                                       ; preds = %if.end.21
  %call24 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call24, %struct._GRand** @gr, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.QbistInfo* @qbist_info to i8*), i8 0, i64 4676, i32 4, i1 false)
  call void @create_info(%struct.ExpInfo* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 0))
  store i32 4, i32* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 1), align 4
  %19 = load i32, i32* %run_mode, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.31
    i32 2, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.then.23
  %call25 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.QbistInfo* @qbist_info to i8*))
  %call26 = call i32 @dialog_run()
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %sw.bb
  store i32 3, i32* %status, align 4
  %call29 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.QbistInfo* @qbist_info to i8*), i32 4676)
  br label %if.end.30

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %status, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.23
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then.23
  %call33 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.QbistInfo* @qbist_info to i8*))
  store i32 3, i32* %status, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.23
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %sw.bb.31, %if.end.30
  %20 = load i32, i32* %status, align 4
  %cmp34 = icmp eq i32 %20, 3
  br i1 %cmp34, label %if.then.35, label %if.end.70

if.then.35:                                       ; preds = %sw.epilog
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width, align 4
  %call36 = call i32 @gimp_tile_width() #5
  %add = add i32 %22, %call36
  %sub = sub i32 %add, 1
  %call37 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %sub, %call37
  %conv = zext i32 %div to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = load i32, i32* %img_width, align 4
  %25 = load i32, i32* %img_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %imagePR, %struct._GimpDrawable* %23, i32 0, i32 0, i32 %24, i32 %25, i32 1, i32 1)
  call void @optimize(%struct.ExpInfo* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 0))
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #2
  %call39 = call i32 @gimp_progress_init(i8* %call38)
  %call40 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %imagePR)
  store i8* %call40, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.then.35
  %26 = load i8*, i8** %pr, align 8
  %cmp41 = icmp ne i8* %26, null
  br i1 %cmp41, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %row, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 7
  %28 = load i32, i32* %h, align 4
  %cmp44 = icmp slt i32 %27, %28
  br i1 %cmp44, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.43
  %data47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 0
  %29 = load i8*, i8** %data47, align 8
  %30 = load i32, i32* %row, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 3
  %31 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %30, %31
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 4
  %32 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 5
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %row, align 4
  %add48 = add nsw i32 %33, %34
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 6
  %35 = load i32, i32* %w, align 4
  %36 = load i32, i32* %sel_x2, align 4
  %37 = load i32, i32* %sel_x1, align 4
  %sub49 = sub nsw i32 %36, %37
  %38 = load i32, i32* %sel_y2, align 4
  %39 = load i32, i32* %sel_y1, align 4
  %sub50 = sub nsw i32 %38, %39
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 2
  %40 = load i32, i32* %bpp, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 1), align 4
  call void @qbist(%struct.ExpInfo* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 0), i8* %add.ptr, i32 %32, i32 %add48, i32 %35, i32 %sub49, i32 %sub50, i32 %40, i32 %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %42 = load i32, i32* %row, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  %y51 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %imagePR, i32 0, i32 5
  %43 = load i32, i32* %y51, align 4
  %44 = load i32, i32* %sel_y1, align 4
  %sub52 = sub nsw i32 %43, %44
  %conv53 = sitofp i32 %sub52 to float
  %45 = load i32, i32* %sel_y2, align 4
  %46 = load i32, i32* %sel_y1, align 4
  %sub54 = sub nsw i32 %45, %46
  %conv55 = sitofp i32 %sub54 to float
  %div56 = fdiv float %conv53, %conv55
  %conv57 = fpext float %div56 to double
  %call58 = call i32 @gimp_progress_update(double %conv57)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end
  %47 = load i8*, i8** %pr, align 8
  %call60 = call i8* @gimp_pixel_rgns_process(i8* %47)
  store i8* %call60, i8** %pr, align 8
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %call62 = call i32 @gimp_progress_update(double 1.000000e+00)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %48)
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id63 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id63, align 4
  %call64 = call i32 @gimp_drawable_merge_shadow(i32 %50, i32 1)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id65 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id65, align 4
  %53 = load i32, i32* %sel_x1, align 4
  %54 = load i32, i32* %sel_y1, align 4
  %55 = load i32, i32* %sel_x2, align 4
  %56 = load i32, i32* %sel_x1, align 4
  %sub66 = sub nsw i32 %55, %56
  %57 = load i32, i32* %sel_y2, align 4
  %58 = load i32, i32* %sel_y1, align 4
  %sub67 = sub nsw i32 %57, %58
  %call68 = call i32 @gimp_drawable_update(i32 %52, i32 %53, i32 %54, i32 %sub66, i32 %sub67)
  %call69 = call i32 @gimp_displays_flush()
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.61, %sw.epilog
  %59 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_free(%struct._GRand* %59)
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.21
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %60 = load i32, i32* %status, align 4
  store i32 %60, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %61)
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare %struct._GRand* @g_rand_new() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @create_info(%struct.ExpInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.ExpInfo*, align 8
  %k = alloca i32, align 4
  store %struct.ExpInfo* %info, %struct.ExpInfo** %info.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call = call i32 @g_rand_int_range(%struct._GRand* %1, i32 0, i32 9)
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %transformSequence = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* %transformSequence, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %4 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call1 = call i32 @g_rand_int_range(%struct._GRand* %4, i32 0, i32 6)
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %source = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [36 x i32], [36 x i32]* %source, i32 0, i64 %idxprom2
  store i32 %call1, i32* %arrayidx3, align 4
  %7 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call4 = call i32 @g_rand_int_range(%struct._GRand* %7, i32 0, i32 6)
  %8 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %control = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %9, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [36 x i32], [36 x i32]* %control, i32 0, i64 %idxprom5
  store i32 %call4, i32* %arrayidx6, align 4
  %10 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call7 = call i32 @g_rand_int_range(%struct._GRand* %10, i32 0, i32 6)
  %11 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %dest = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %12, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [36 x i32], [36 x i32]* %dest, i32 0, i64 %idxprom8
  store i32 %call7, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dialog_run() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %bbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %run = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #2
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 -5, i8* null)
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
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
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
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %table, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %18, i32 6)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %21, i32 6)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i8* bitcast (%struct.QbistInfo* @qbist_info to i8*), i64 576, i32 4, i1 false)
  call void @dialog_new_variations(%struct._GtkWidget* null, i8* null)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @last_info to i8*), i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i64 5184, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %27, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call21 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %button, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %32 = load i32, i32* %i, align 4
  %rem = srem i32 %32, 3
  %33 = load i32, i32* %i, align 4
  %rem24 = srem i32 %33, 3
  %add = add nsw i32 %rem24, 1
  %34 = load i32, i32* %i, align 4
  %div = sdiv i32 %34, 3
  %35 = load i32, i32* %i, align 4
  %div25 = sdiv i32 %35, 3
  %add26 = add nsw i32 %div25, 1
  call void @gtk_table_attach(%struct._GtkTable* %30, %struct._GtkWidget* %31, i32 %rem, i32 %add, i32 %div, i32 %add26, i32 6, i32 6, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %39, 5
  %rem28 = srem i32 %add27, 9
  %idxprom = sext i32 %rem28 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 %idxprom
  %40 = bitcast %struct.ExpInfo* %arrayidx to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ExpInfo*)* @dialog_select_preview to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %call30 = call %struct._GtkWidget* @gimp_preview_area_new()
  %41 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @preview, i32 0, i64 %idxprom31
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %arrayidx32, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %42 to i64
  %arrayidx34 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @preview, i32 0, i64 %idxprom33
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx34, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %43, i32 64, i32 64)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call35)
  %46 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %47 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %47 to i64
  %arrayidx38 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @preview, i32 0, i64 %idxprom37
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx38, align 8
  call void @gtk_container_add(%struct._GtkContainer* %46, %struct._GtkWidget* %48)
  %49 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %49 to i64
  %arrayidx40 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @preview, i32 0, i64 %idxprom39
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx40, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #2
  %call42 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_toggle_button_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call43)
  %54 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkToggleButton*
  %55 = load i32, i32* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 1), align 4
  %cmp45 = icmp sgt i32 %55, 1
  %conv = zext i1 %cmp45 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %54, i32 %conv)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call46)
  %58 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %58, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_toggle_antialaising to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call49 = call %struct._GtkWidget* @gtk_button_box_new(i32 0)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %bbox, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_button_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call50)
  %65 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkButtonBox*
  call void @gtk_button_box_set_layout(%struct._GtkButtonBox* %65, i32 3)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call52)
  %68 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %call54 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %button, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_container_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call55)
  %73 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkContainer*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %73, %struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_undo to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call58 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0))
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %button, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_container_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call59)
  %80 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkContainer*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %80, %struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_load to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call62 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %button, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_container_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call63)
  %87 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkContainer*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %87, %struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_save to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  call void @dialog_update_previews(%struct._GtkWidget* null, i8* null)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_dialog_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call66)
  %95 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpDialog*
  %call68 = call i32 @gimp_dialog_run(%struct._GimpDialog* %95)
  %cmp69 = icmp eq i32 %call68, -5
  %conv70 = zext i1 %cmp69 to i32
  store i32 %conv70, i32* %run, align 4
  %96 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %96, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.QbistInfo* @qbist_info to i8*), i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i64 576, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %97)
  %98 = load i32, i32* %run, align 4
  ret i32 %98
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #4

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @optimize(%struct.ExpInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.ExpInfo*, align 8
  %i = alloca i32, align 4
  store %struct.ExpInfo* %info, %struct.ExpInfo** %info.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* @used_trans_flag, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* @used_reg_flag, i32 0, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %transformSequence = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [36 x i32], [36 x i32]* %transformSequence, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  switch i32 %6, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %dest = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %8, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [36 x i32], [36 x i32]* %dest, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %control = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %11, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [36 x i32], [36 x i32]* %control, i32 0, i64 %idxprom8
  store i32 %9, i32* %arrayidx9, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  call void @check_last_modified(%struct.ExpInfo* %13, i32 36, i32 0)
  ret void
}

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @qbist(%struct.ExpInfo* %info, i8* %buffer, i32 %xp, i32 %yp, i32 %num, i32 %width, i32 %height, i32 %bpp, i32 %oversampling) #0 {
entry:
  %info.addr = alloca %struct.ExpInfo*, align 8
  %buffer.addr = alloca i8*, align 8
  %xp.addr = alloca i32, align 4
  %yp.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %oversampling.addr = alloca i32, align 4
  %gx = alloca i32, align 4
  %reg = alloca [6 x [3 x float]], align 16
  %accum = alloca [3 x i32], align 4
  %yy = alloca i32, align 4
  %i = alloca i32, align 4
  %xx = alloca i32, align 4
  %sr = alloca i16, align 2
  %cr = alloca i16, align 2
  %dr = alloca i16, align 2
  %scalarProd = alloca float, align 4
  store %struct.ExpInfo* %info, %struct.ExpInfo** %info.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %xp, i32* %xp.addr, align 4
  store i32 %yp, i32* %yp.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %oversampling, i32* %oversampling.addr, align 4
  store i32 0, i32* %gx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.500, %entry
  %0 = load i32, i32* %gx, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.502

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %accum, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %yy, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.472, %for.end
  %5 = load i32, i32* %yy, align 4
  %6 = load i32, i32* %oversampling.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body.6, label %for.end.474

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %xx, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.469, %for.body.6
  %7 = load i32, i32* %xx, align 4
  %8 = load i32, i32* %oversampling.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body.9, label %for.end.471

for.body.9:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.35, %for.body.9
  %9 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %9, 6
  br i1 %cmp11, label %for.body.12, label %for.end.37

for.body.12:                                      ; preds = %for.cond.10
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [6 x i32], [6 x i32]* @used_reg_flag, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %12 = load i32, i32* %gx, align 4
  %13 = load i32, i32* %xp.addr, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %oversampling.addr, align 4
  %mul = mul nsw i32 %add, %14
  %15 = load i32, i32* %xx, align 4
  %add15 = add nsw i32 %mul, %15
  %conv = sitofp i32 %add15 to float
  %16 = load i32, i32* %width.addr, align 4
  %17 = load i32, i32* %oversampling.addr, align 4
  %mul16 = mul nsw i32 %16, %17
  %conv17 = sitofp i32 %mul16 to float
  %div = fdiv float %conv, %conv17
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx19, i32 0, i64 0
  store float %div, float* %arrayidx20, align 4
  %19 = load i32, i32* %yp.addr, align 4
  %20 = load i32, i32* %oversampling.addr, align 4
  %mul21 = mul nsw i32 %19, %20
  %21 = load i32, i32* %yy, align 4
  %add22 = add nsw i32 %mul21, %21
  %conv23 = sitofp i32 %add22 to float
  %22 = load i32, i32* %height.addr, align 4
  %23 = load i32, i32* %oversampling.addr, align 4
  %mul24 = mul nsw i32 %22, %23
  %conv25 = sitofp i32 %mul24 to float
  %div26 = fdiv float %conv23, %conv25
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx28, i32 0, i64 1
  store float %div26, float* %arrayidx29, align 4
  %25 = load i32, i32* %i, align 4
  %conv30 = sitofp i32 %25 to float
  %div31 = fdiv float %conv30, 6.000000e+00
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx33, i32 0, i64 2
  store float %div31, float* %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.10

for.end.37:                                       ; preds = %for.cond.10
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.448, %for.end.37
  %28 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %28, 36
  br i1 %cmp39, label %for.body.41, label %for.end.450

for.body.41:                                      ; preds = %for.cond.38
  %29 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %29 to i64
  %30 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %source = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [36 x i32], [36 x i32]* %source, i32 0, i64 %idxprom42
  %31 = load i32, i32* %arrayidx43, align 4
  %conv44 = trunc i32 %31 to i16
  store i16 %conv44, i16* %sr, align 2
  %32 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %control = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %33, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [36 x i32], [36 x i32]* %control, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  %conv47 = trunc i32 %34 to i16
  store i16 %conv47, i16* %cr, align 2
  %35 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %dest = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %36, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [36 x i32], [36 x i32]* %dest, i32 0, i64 %idxprom48
  %37 = load i32, i32* %arrayidx49, align 4
  %conv50 = trunc i32 %37 to i16
  store i16 %conv50, i16* %dr, align 2
  %38 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [36 x i32], [36 x i32]* @used_trans_flag, i32 0, i64 %idxprom51
  %39 = load i32, i32* %arrayidx52, align 4
  %tobool53 = icmp ne i32 %39, 0
  br i1 %tobool53, label %if.then.54, label %if.end.447

if.then.54:                                       ; preds = %for.body.41
  %40 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %40 to i64
  %41 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %transformSequence = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %41, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [36 x i32], [36 x i32]* %transformSequence, i32 0, i64 %idxprom55
  %42 = load i32, i32* %arrayidx56, align 4
  switch i32 %42, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.101
    i32 2, label %sw.bb.173
    i32 3, label %sw.bb.246
    i32 4, label %sw.bb.265
    i32 5, label %sw.bb.284
    i32 6, label %sw.bb.315
    i32 7, label %sw.bb.366
    i32 8, label %sw.bb.419
  ]

sw.bb:                                            ; preds = %if.then.54
  %43 = load i16, i16* %sr, align 2
  %idxprom57 = zext i16 %43 to i64
  %arrayidx58 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx58, i32 0, i64 0
  %44 = load float, float* %arrayidx59, align 4
  %45 = load i16, i16* %cr, align 2
  %idxprom60 = zext i16 %45 to i64
  %arrayidx61 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx61, i32 0, i64 0
  %46 = load float, float* %arrayidx62, align 4
  %mul63 = fmul float %44, %46
  %47 = load i16, i16* %sr, align 2
  %idxprom64 = zext i16 %47 to i64
  %arrayidx65 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx65, i32 0, i64 1
  %48 = load float, float* %arrayidx66, align 4
  %49 = load i16, i16* %cr, align 2
  %idxprom67 = zext i16 %49 to i64
  %arrayidx68 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx68, i32 0, i64 1
  %50 = load float, float* %arrayidx69, align 4
  %mul70 = fmul float %48, %50
  %add71 = fadd float %mul63, %mul70
  %51 = load i16, i16* %sr, align 2
  %idxprom72 = zext i16 %51 to i64
  %arrayidx73 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx73, i32 0, i64 2
  %52 = load float, float* %arrayidx74, align 4
  %53 = load i16, i16* %cr, align 2
  %idxprom75 = zext i16 %53 to i64
  %arrayidx76 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx76, i32 0, i64 2
  %54 = load float, float* %arrayidx77, align 4
  %mul78 = fmul float %52, %54
  %add79 = fadd float %add71, %mul78
  store float %add79, float* %scalarProd, align 4
  %55 = load float, float* %scalarProd, align 4
  %56 = load i16, i16* %sr, align 2
  %idxprom80 = zext i16 %56 to i64
  %arrayidx81 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx81, i32 0, i64 0
  %57 = load float, float* %arrayidx82, align 4
  %mul83 = fmul float %55, %57
  %58 = load i16, i16* %dr, align 2
  %idxprom84 = zext i16 %58 to i64
  %arrayidx85 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx85, i32 0, i64 0
  store float %mul83, float* %arrayidx86, align 4
  %59 = load float, float* %scalarProd, align 4
  %60 = load i16, i16* %sr, align 2
  %idxprom87 = zext i16 %60 to i64
  %arrayidx88 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx88, i32 0, i64 1
  %61 = load float, float* %arrayidx89, align 4
  %mul90 = fmul float %59, %61
  %62 = load i16, i16* %dr, align 2
  %idxprom91 = zext i16 %62 to i64
  %arrayidx92 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx92, i32 0, i64 1
  store float %mul90, float* %arrayidx93, align 4
  %63 = load float, float* %scalarProd, align 4
  %64 = load i16, i16* %sr, align 2
  %idxprom94 = zext i16 %64 to i64
  %arrayidx95 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx95, i32 0, i64 2
  %65 = load float, float* %arrayidx96, align 4
  %mul97 = fmul float %63, %65
  %66 = load i16, i16* %dr, align 2
  %idxprom98 = zext i16 %66 to i64
  %arrayidx99 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx99, i32 0, i64 2
  store float %mul97, float* %arrayidx100, align 4
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.then.54
  %67 = load i16, i16* %sr, align 2
  %idxprom102 = zext i16 %67 to i64
  %arrayidx103 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx103, i32 0, i64 0
  %68 = load float, float* %arrayidx104, align 4
  %69 = load i16, i16* %cr, align 2
  %idxprom105 = zext i16 %69 to i64
  %arrayidx106 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx106, i32 0, i64 0
  %70 = load float, float* %arrayidx107, align 4
  %add108 = fadd float %68, %70
  %71 = load i16, i16* %dr, align 2
  %idxprom109 = zext i16 %71 to i64
  %arrayidx110 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx110, i32 0, i64 0
  store float %add108, float* %arrayidx111, align 4
  %72 = load i16, i16* %dr, align 2
  %idxprom112 = zext i16 %72 to i64
  %arrayidx113 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx113, i32 0, i64 0
  %73 = load float, float* %arrayidx114, align 4
  %conv115 = fpext float %73 to double
  %cmp116 = fcmp oge double %conv115, 1.000000e+00
  br i1 %cmp116, label %if.then.118, label %if.end.124

if.then.118:                                      ; preds = %sw.bb.101
  %74 = load i16, i16* %dr, align 2
  %idxprom119 = zext i16 %74 to i64
  %arrayidx120 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx120, i32 0, i64 0
  %75 = load float, float* %arrayidx121, align 4
  %conv122 = fpext float %75 to double
  %sub = fsub double %conv122, 1.000000e+00
  %conv123 = fptrunc double %sub to float
  store float %conv123, float* %arrayidx121, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.118, %sw.bb.101
  %76 = load i16, i16* %sr, align 2
  %idxprom125 = zext i16 %76 to i64
  %arrayidx126 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx126, i32 0, i64 1
  %77 = load float, float* %arrayidx127, align 4
  %78 = load i16, i16* %cr, align 2
  %idxprom128 = zext i16 %78 to i64
  %arrayidx129 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom128
  %arrayidx130 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx129, i32 0, i64 1
  %79 = load float, float* %arrayidx130, align 4
  %add131 = fadd float %77, %79
  %80 = load i16, i16* %dr, align 2
  %idxprom132 = zext i16 %80 to i64
  %arrayidx133 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx133, i32 0, i64 1
  store float %add131, float* %arrayidx134, align 4
  %81 = load i16, i16* %dr, align 2
  %idxprom135 = zext i16 %81 to i64
  %arrayidx136 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx136, i32 0, i64 1
  %82 = load float, float* %arrayidx137, align 4
  %conv138 = fpext float %82 to double
  %cmp139 = fcmp oge double %conv138, 1.000000e+00
  br i1 %cmp139, label %if.then.141, label %if.end.148

if.then.141:                                      ; preds = %if.end.124
  %83 = load i16, i16* %dr, align 2
  %idxprom142 = zext i16 %83 to i64
  %arrayidx143 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx143, i32 0, i64 1
  %84 = load float, float* %arrayidx144, align 4
  %conv145 = fpext float %84 to double
  %sub146 = fsub double %conv145, 1.000000e+00
  %conv147 = fptrunc double %sub146 to float
  store float %conv147, float* %arrayidx144, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.141, %if.end.124
  %85 = load i16, i16* %sr, align 2
  %idxprom149 = zext i16 %85 to i64
  %arrayidx150 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx150, i32 0, i64 2
  %86 = load float, float* %arrayidx151, align 4
  %87 = load i16, i16* %cr, align 2
  %idxprom152 = zext i16 %87 to i64
  %arrayidx153 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom152
  %arrayidx154 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx153, i32 0, i64 2
  %88 = load float, float* %arrayidx154, align 4
  %add155 = fadd float %86, %88
  %89 = load i16, i16* %dr, align 2
  %idxprom156 = zext i16 %89 to i64
  %arrayidx157 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx157, i32 0, i64 2
  store float %add155, float* %arrayidx158, align 4
  %90 = load i16, i16* %dr, align 2
  %idxprom159 = zext i16 %90 to i64
  %arrayidx160 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx160, i32 0, i64 2
  %91 = load float, float* %arrayidx161, align 4
  %conv162 = fpext float %91 to double
  %cmp163 = fcmp oge double %conv162, 1.000000e+00
  br i1 %cmp163, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %if.end.148
  %92 = load i16, i16* %dr, align 2
  %idxprom166 = zext i16 %92 to i64
  %arrayidx167 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx167, i32 0, i64 2
  %93 = load float, float* %arrayidx168, align 4
  %conv169 = fpext float %93 to double
  %sub170 = fsub double %conv169, 1.000000e+00
  %conv171 = fptrunc double %sub170 to float
  store float %conv171, float* %arrayidx168, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.165, %if.end.148
  br label %sw.epilog

sw.bb.173:                                        ; preds = %if.then.54
  %94 = load i16, i16* %sr, align 2
  %idxprom174 = zext i16 %94 to i64
  %arrayidx175 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx175, i32 0, i64 0
  %95 = load float, float* %arrayidx176, align 4
  %96 = load i16, i16* %cr, align 2
  %idxprom177 = zext i16 %96 to i64
  %arrayidx178 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx178, i32 0, i64 0
  %97 = load float, float* %arrayidx179, align 4
  %sub180 = fsub float %95, %97
  %98 = load i16, i16* %dr, align 2
  %idxprom181 = zext i16 %98 to i64
  %arrayidx182 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx182, i32 0, i64 0
  store float %sub180, float* %arrayidx183, align 4
  %99 = load i16, i16* %dr, align 2
  %idxprom184 = zext i16 %99 to i64
  %arrayidx185 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom184
  %arrayidx186 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx185, i32 0, i64 0
  %100 = load float, float* %arrayidx186, align 4
  %conv187 = fpext float %100 to double
  %cmp188 = fcmp ole double %conv187, 0.000000e+00
  br i1 %cmp188, label %if.then.190, label %if.end.197

if.then.190:                                      ; preds = %sw.bb.173
  %101 = load i16, i16* %dr, align 2
  %idxprom191 = zext i16 %101 to i64
  %arrayidx192 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx192, i32 0, i64 0
  %102 = load float, float* %arrayidx193, align 4
  %conv194 = fpext float %102 to double
  %add195 = fadd double %conv194, 1.000000e+00
  %conv196 = fptrunc double %add195 to float
  store float %conv196, float* %arrayidx193, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.190, %sw.bb.173
  %103 = load i16, i16* %sr, align 2
  %idxprom198 = zext i16 %103 to i64
  %arrayidx199 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx199, i32 0, i64 1
  %104 = load float, float* %arrayidx200, align 4
  %105 = load i16, i16* %cr, align 2
  %idxprom201 = zext i16 %105 to i64
  %arrayidx202 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom201
  %arrayidx203 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx202, i32 0, i64 1
  %106 = load float, float* %arrayidx203, align 4
  %sub204 = fsub float %104, %106
  %107 = load i16, i16* %dr, align 2
  %idxprom205 = zext i16 %107 to i64
  %arrayidx206 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx206, i32 0, i64 1
  store float %sub204, float* %arrayidx207, align 4
  %108 = load i16, i16* %dr, align 2
  %idxprom208 = zext i16 %108 to i64
  %arrayidx209 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx209, i32 0, i64 1
  %109 = load float, float* %arrayidx210, align 4
  %conv211 = fpext float %109 to double
  %cmp212 = fcmp ole double %conv211, 0.000000e+00
  br i1 %cmp212, label %if.then.214, label %if.end.221

if.then.214:                                      ; preds = %if.end.197
  %110 = load i16, i16* %dr, align 2
  %idxprom215 = zext i16 %110 to i64
  %arrayidx216 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom215
  %arrayidx217 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx216, i32 0, i64 1
  %111 = load float, float* %arrayidx217, align 4
  %conv218 = fpext float %111 to double
  %add219 = fadd double %conv218, 1.000000e+00
  %conv220 = fptrunc double %add219 to float
  store float %conv220, float* %arrayidx217, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.214, %if.end.197
  %112 = load i16, i16* %sr, align 2
  %idxprom222 = zext i16 %112 to i64
  %arrayidx223 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx223, i32 0, i64 2
  %113 = load float, float* %arrayidx224, align 4
  %114 = load i16, i16* %cr, align 2
  %idxprom225 = zext i16 %114 to i64
  %arrayidx226 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx226, i32 0, i64 2
  %115 = load float, float* %arrayidx227, align 4
  %sub228 = fsub float %113, %115
  %116 = load i16, i16* %dr, align 2
  %idxprom229 = zext i16 %116 to i64
  %arrayidx230 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom229
  %arrayidx231 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx230, i32 0, i64 2
  store float %sub228, float* %arrayidx231, align 4
  %117 = load i16, i16* %dr, align 2
  %idxprom232 = zext i16 %117 to i64
  %arrayidx233 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom232
  %arrayidx234 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx233, i32 0, i64 2
  %118 = load float, float* %arrayidx234, align 4
  %conv235 = fpext float %118 to double
  %cmp236 = fcmp ole double %conv235, 0.000000e+00
  br i1 %cmp236, label %if.then.238, label %if.end.245

if.then.238:                                      ; preds = %if.end.221
  %119 = load i16, i16* %dr, align 2
  %idxprom239 = zext i16 %119 to i64
  %arrayidx240 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom239
  %arrayidx241 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx240, i32 0, i64 2
  %120 = load float, float* %arrayidx241, align 4
  %conv242 = fpext float %120 to double
  %add243 = fadd double %conv242, 1.000000e+00
  %conv244 = fptrunc double %add243 to float
  store float %conv244, float* %arrayidx241, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.238, %if.end.221
  br label %sw.epilog

sw.bb.246:                                        ; preds = %if.then.54
  %121 = load i16, i16* %sr, align 2
  %idxprom247 = zext i16 %121 to i64
  %arrayidx248 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom247
  %arrayidx249 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx248, i32 0, i64 1
  %122 = load float, float* %arrayidx249, align 4
  %123 = load i16, i16* %dr, align 2
  %idxprom250 = zext i16 %123 to i64
  %arrayidx251 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx251, i32 0, i64 0
  store float %122, float* %arrayidx252, align 4
  %124 = load i16, i16* %sr, align 2
  %idxprom253 = zext i16 %124 to i64
  %arrayidx254 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom253
  %arrayidx255 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx254, i32 0, i64 2
  %125 = load float, float* %arrayidx255, align 4
  %126 = load i16, i16* %dr, align 2
  %idxprom256 = zext i16 %126 to i64
  %arrayidx257 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx257, i32 0, i64 1
  store float %125, float* %arrayidx258, align 4
  %127 = load i16, i16* %sr, align 2
  %idxprom259 = zext i16 %127 to i64
  %arrayidx260 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom259
  %arrayidx261 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx260, i32 0, i64 0
  %128 = load float, float* %arrayidx261, align 4
  %129 = load i16, i16* %dr, align 2
  %idxprom262 = zext i16 %129 to i64
  %arrayidx263 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx263, i32 0, i64 2
  store float %128, float* %arrayidx264, align 4
  br label %sw.epilog

sw.bb.265:                                        ; preds = %if.then.54
  %130 = load i16, i16* %sr, align 2
  %idxprom266 = zext i16 %130 to i64
  %arrayidx267 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom266
  %arrayidx268 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx267, i32 0, i64 2
  %131 = load float, float* %arrayidx268, align 4
  %132 = load i16, i16* %dr, align 2
  %idxprom269 = zext i16 %132 to i64
  %arrayidx270 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom269
  %arrayidx271 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx270, i32 0, i64 0
  store float %131, float* %arrayidx271, align 4
  %133 = load i16, i16* %sr, align 2
  %idxprom272 = zext i16 %133 to i64
  %arrayidx273 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom272
  %arrayidx274 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx273, i32 0, i64 0
  %134 = load float, float* %arrayidx274, align 4
  %135 = load i16, i16* %dr, align 2
  %idxprom275 = zext i16 %135 to i64
  %arrayidx276 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom275
  %arrayidx277 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx276, i32 0, i64 1
  store float %134, float* %arrayidx277, align 4
  %136 = load i16, i16* %sr, align 2
  %idxprom278 = zext i16 %136 to i64
  %arrayidx279 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom278
  %arrayidx280 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx279, i32 0, i64 1
  %137 = load float, float* %arrayidx280, align 4
  %138 = load i16, i16* %dr, align 2
  %idxprom281 = zext i16 %138 to i64
  %arrayidx282 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom281
  %arrayidx283 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx282, i32 0, i64 2
  store float %137, float* %arrayidx283, align 4
  br label %sw.epilog

sw.bb.284:                                        ; preds = %if.then.54
  %139 = load i16, i16* %sr, align 2
  %idxprom285 = zext i16 %139 to i64
  %arrayidx286 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom285
  %arrayidx287 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx286, i32 0, i64 0
  %140 = load float, float* %arrayidx287, align 4
  %141 = load i16, i16* %cr, align 2
  %idxprom288 = zext i16 %141 to i64
  %arrayidx289 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom288
  %arrayidx290 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx289, i32 0, i64 0
  %142 = load float, float* %arrayidx290, align 4
  %mul291 = fmul float %140, %142
  %143 = load i16, i16* %dr, align 2
  %idxprom292 = zext i16 %143 to i64
  %arrayidx293 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx293, i32 0, i64 0
  store float %mul291, float* %arrayidx294, align 4
  %144 = load i16, i16* %sr, align 2
  %idxprom295 = zext i16 %144 to i64
  %arrayidx296 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom295
  %arrayidx297 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx296, i32 0, i64 1
  %145 = load float, float* %arrayidx297, align 4
  %146 = load i16, i16* %cr, align 2
  %idxprom298 = zext i16 %146 to i64
  %arrayidx299 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom298
  %arrayidx300 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx299, i32 0, i64 1
  %147 = load float, float* %arrayidx300, align 4
  %mul301 = fmul float %145, %147
  %148 = load i16, i16* %dr, align 2
  %idxprom302 = zext i16 %148 to i64
  %arrayidx303 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom302
  %arrayidx304 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx303, i32 0, i64 1
  store float %mul301, float* %arrayidx304, align 4
  %149 = load i16, i16* %sr, align 2
  %idxprom305 = zext i16 %149 to i64
  %arrayidx306 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom305
  %arrayidx307 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx306, i32 0, i64 2
  %150 = load float, float* %arrayidx307, align 4
  %151 = load i16, i16* %cr, align 2
  %idxprom308 = zext i16 %151 to i64
  %arrayidx309 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom308
  %arrayidx310 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx309, i32 0, i64 2
  %152 = load float, float* %arrayidx310, align 4
  %mul311 = fmul float %150, %152
  %153 = load i16, i16* %dr, align 2
  %idxprom312 = zext i16 %153 to i64
  %arrayidx313 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom312
  %arrayidx314 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx313, i32 0, i64 2
  store float %mul311, float* %arrayidx314, align 4
  br label %sw.epilog

sw.bb.315:                                        ; preds = %if.then.54
  %154 = load i16, i16* %sr, align 2
  %idxprom316 = zext i16 %154 to i64
  %arrayidx317 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom316
  %arrayidx318 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx317, i32 0, i64 0
  %155 = load float, float* %arrayidx318, align 4
  %conv319 = fpext float %155 to double
  %mul320 = fmul double 2.000000e+01, %conv319
  %156 = load i16, i16* %cr, align 2
  %idxprom321 = zext i16 %156 to i64
  %arrayidx322 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom321
  %arrayidx323 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx322, i32 0, i64 0
  %157 = load float, float* %arrayidx323, align 4
  %conv324 = fpext float %157 to double
  %mul325 = fmul double %mul320, %conv324
  %call = call double @sin(double %mul325) #2
  %mul326 = fmul double 5.000000e-01, %call
  %add327 = fadd double 5.000000e-01, %mul326
  %conv328 = fptrunc double %add327 to float
  %158 = load i16, i16* %dr, align 2
  %idxprom329 = zext i16 %158 to i64
  %arrayidx330 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom329
  %arrayidx331 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx330, i32 0, i64 0
  store float %conv328, float* %arrayidx331, align 4
  %159 = load i16, i16* %sr, align 2
  %idxprom332 = zext i16 %159 to i64
  %arrayidx333 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom332
  %arrayidx334 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx333, i32 0, i64 1
  %160 = load float, float* %arrayidx334, align 4
  %conv335 = fpext float %160 to double
  %mul336 = fmul double 2.000000e+01, %conv335
  %161 = load i16, i16* %cr, align 2
  %idxprom337 = zext i16 %161 to i64
  %arrayidx338 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom337
  %arrayidx339 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx338, i32 0, i64 1
  %162 = load float, float* %arrayidx339, align 4
  %conv340 = fpext float %162 to double
  %mul341 = fmul double %mul336, %conv340
  %call342 = call double @sin(double %mul341) #2
  %mul343 = fmul double 5.000000e-01, %call342
  %add344 = fadd double 5.000000e-01, %mul343
  %conv345 = fptrunc double %add344 to float
  %163 = load i16, i16* %dr, align 2
  %idxprom346 = zext i16 %163 to i64
  %arrayidx347 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom346
  %arrayidx348 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx347, i32 0, i64 1
  store float %conv345, float* %arrayidx348, align 4
  %164 = load i16, i16* %sr, align 2
  %idxprom349 = zext i16 %164 to i64
  %arrayidx350 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx350, i32 0, i64 2
  %165 = load float, float* %arrayidx351, align 4
  %conv352 = fpext float %165 to double
  %mul353 = fmul double 2.000000e+01, %conv352
  %166 = load i16, i16* %cr, align 2
  %idxprom354 = zext i16 %166 to i64
  %arrayidx355 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom354
  %arrayidx356 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx355, i32 0, i64 2
  %167 = load float, float* %arrayidx356, align 4
  %conv357 = fpext float %167 to double
  %mul358 = fmul double %mul353, %conv357
  %call359 = call double @sin(double %mul358) #2
  %mul360 = fmul double 5.000000e-01, %call359
  %add361 = fadd double 5.000000e-01, %mul360
  %conv362 = fptrunc double %add361 to float
  %168 = load i16, i16* %dr, align 2
  %idxprom363 = zext i16 %168 to i64
  %arrayidx364 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom363
  %arrayidx365 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx364, i32 0, i64 2
  store float %conv362, float* %arrayidx365, align 4
  br label %sw.epilog

sw.bb.366:                                        ; preds = %if.then.54
  %169 = load i16, i16* %cr, align 2
  %idxprom367 = zext i16 %169 to i64
  %arrayidx368 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx368, i32 0, i64 0
  %170 = load float, float* %arrayidx369, align 4
  %171 = load i16, i16* %cr, align 2
  %idxprom370 = zext i16 %171 to i64
  %arrayidx371 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom370
  %arrayidx372 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx371, i32 0, i64 1
  %172 = load float, float* %arrayidx372, align 4
  %add373 = fadd float %170, %172
  %173 = load i16, i16* %cr, align 2
  %idxprom374 = zext i16 %173 to i64
  %arrayidx375 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx375, i32 0, i64 2
  %174 = load float, float* %arrayidx376, align 4
  %add377 = fadd float %add373, %174
  %conv378 = fpext float %add377 to double
  %cmp379 = fcmp ogt double %conv378, 5.000000e-01
  br i1 %cmp379, label %if.then.381, label %if.else

if.then.381:                                      ; preds = %sw.bb.366
  %175 = load i16, i16* %sr, align 2
  %idxprom382 = zext i16 %175 to i64
  %arrayidx383 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx383, i32 0, i64 0
  %176 = load float, float* %arrayidx384, align 4
  %177 = load i16, i16* %dr, align 2
  %idxprom385 = zext i16 %177 to i64
  %arrayidx386 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom385
  %arrayidx387 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx386, i32 0, i64 0
  store float %176, float* %arrayidx387, align 4
  %178 = load i16, i16* %sr, align 2
  %idxprom388 = zext i16 %178 to i64
  %arrayidx389 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom388
  %arrayidx390 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx389, i32 0, i64 1
  %179 = load float, float* %arrayidx390, align 4
  %180 = load i16, i16* %dr, align 2
  %idxprom391 = zext i16 %180 to i64
  %arrayidx392 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom391
  %arrayidx393 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx392, i32 0, i64 1
  store float %179, float* %arrayidx393, align 4
  %181 = load i16, i16* %sr, align 2
  %idxprom394 = zext i16 %181 to i64
  %arrayidx395 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom394
  %arrayidx396 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx395, i32 0, i64 2
  %182 = load float, float* %arrayidx396, align 4
  %183 = load i16, i16* %dr, align 2
  %idxprom397 = zext i16 %183 to i64
  %arrayidx398 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom397
  %arrayidx399 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx398, i32 0, i64 2
  store float %182, float* %arrayidx399, align 4
  br label %if.end.418

if.else:                                          ; preds = %sw.bb.366
  %184 = load i16, i16* %cr, align 2
  %idxprom400 = zext i16 %184 to i64
  %arrayidx401 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom400
  %arrayidx402 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx401, i32 0, i64 0
  %185 = load float, float* %arrayidx402, align 4
  %186 = load i16, i16* %dr, align 2
  %idxprom403 = zext i16 %186 to i64
  %arrayidx404 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx404, i32 0, i64 0
  store float %185, float* %arrayidx405, align 4
  %187 = load i16, i16* %cr, align 2
  %idxprom406 = zext i16 %187 to i64
  %arrayidx407 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom406
  %arrayidx408 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx407, i32 0, i64 1
  %188 = load float, float* %arrayidx408, align 4
  %189 = load i16, i16* %dr, align 2
  %idxprom409 = zext i16 %189 to i64
  %arrayidx410 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom409
  %arrayidx411 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx410, i32 0, i64 1
  store float %188, float* %arrayidx411, align 4
  %190 = load i16, i16* %cr, align 2
  %idxprom412 = zext i16 %190 to i64
  %arrayidx413 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom412
  %arrayidx414 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx413, i32 0, i64 2
  %191 = load float, float* %arrayidx414, align 4
  %192 = load i16, i16* %dr, align 2
  %idxprom415 = zext i16 %192 to i64
  %arrayidx416 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom415
  %arrayidx417 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx416, i32 0, i64 2
  store float %191, float* %arrayidx417, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.else, %if.then.381
  br label %sw.epilog

sw.bb.419:                                        ; preds = %if.then.54
  %193 = load i16, i16* %sr, align 2
  %idxprom420 = zext i16 %193 to i64
  %arrayidx421 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom420
  %arrayidx422 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx421, i32 0, i64 0
  %194 = load float, float* %arrayidx422, align 4
  %conv423 = fpext float %194 to double
  %sub424 = fsub double 1.000000e+00, %conv423
  %conv425 = fptrunc double %sub424 to float
  %195 = load i16, i16* %dr, align 2
  %idxprom426 = zext i16 %195 to i64
  %arrayidx427 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom426
  %arrayidx428 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx427, i32 0, i64 0
  store float %conv425, float* %arrayidx428, align 4
  %196 = load i16, i16* %sr, align 2
  %idxprom429 = zext i16 %196 to i64
  %arrayidx430 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom429
  %arrayidx431 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx430, i32 0, i64 1
  %197 = load float, float* %arrayidx431, align 4
  %conv432 = fpext float %197 to double
  %sub433 = fsub double 1.000000e+00, %conv432
  %conv434 = fptrunc double %sub433 to float
  %198 = load i16, i16* %dr, align 2
  %idxprom435 = zext i16 %198 to i64
  %arrayidx436 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom435
  %arrayidx437 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx436, i32 0, i64 1
  store float %conv434, float* %arrayidx437, align 4
  %199 = load i16, i16* %sr, align 2
  %idxprom438 = zext i16 %199 to i64
  %arrayidx439 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom438
  %arrayidx440 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx439, i32 0, i64 2
  %200 = load float, float* %arrayidx440, align 4
  %conv441 = fpext float %200 to double
  %sub442 = fsub double 1.000000e+00, %conv441
  %conv443 = fptrunc double %sub442 to float
  %201 = load i16, i16* %dr, align 2
  %idxprom444 = zext i16 %201 to i64
  %arrayidx445 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 %idxprom444
  %arrayidx446 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx445, i32 0, i64 2
  store float %conv443, float* %arrayidx446, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.54, %sw.bb.419, %if.end.418, %sw.bb.315, %sw.bb.284, %sw.bb.265, %sw.bb.246, %if.end.245, %if.end.172, %sw.bb
  br label %if.end.447

if.end.447:                                       ; preds = %sw.epilog, %for.body.41
  br label %for.inc.448

for.inc.448:                                      ; preds = %if.end.447
  %202 = load i32, i32* %i, align 4
  %inc449 = add nsw i32 %202, 1
  store i32 %inc449, i32* %i, align 4
  br label %for.cond.38

for.end.450:                                      ; preds = %for.cond.38
  store i32 0, i32* %i, align 4
  br label %for.cond.451

for.cond.451:                                     ; preds = %for.inc.466, %for.end.450
  %203 = load i32, i32* %i, align 4
  %cmp452 = icmp slt i32 %203, 3
  br i1 %cmp452, label %for.body.454, label %for.end.468

for.body.454:                                     ; preds = %for.cond.451
  %204 = load i32, i32* %i, align 4
  %idxprom455 = sext i32 %204 to i64
  %arrayidx456 = getelementptr inbounds [6 x [3 x float]], [6 x [3 x float]]* %reg, i32 0, i64 0
  %arrayidx457 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx456, i32 0, i64 %idxprom455
  %205 = load float, float* %arrayidx457, align 4
  %conv458 = fpext float %205 to double
  %mul459 = fmul double %conv458, 2.550000e+02
  %add460 = fadd double %mul459, 5.000000e-01
  %conv461 = fptoui double %add460 to i8
  %conv462 = zext i8 %conv461 to i32
  %206 = load i32, i32* %i, align 4
  %idxprom463 = sext i32 %206 to i64
  %arrayidx464 = getelementptr inbounds [3 x i32], [3 x i32]* %accum, i32 0, i64 %idxprom463
  %207 = load i32, i32* %arrayidx464, align 4
  %add465 = add nsw i32 %207, %conv462
  store i32 %add465, i32* %arrayidx464, align 4
  br label %for.inc.466

for.inc.466:                                      ; preds = %for.body.454
  %208 = load i32, i32* %i, align 4
  %inc467 = add nsw i32 %208, 1
  store i32 %inc467, i32* %i, align 4
  br label %for.cond.451

for.end.468:                                      ; preds = %for.cond.451
  br label %for.inc.469

for.inc.469:                                      ; preds = %for.end.468
  %209 = load i32, i32* %xx, align 4
  %inc470 = add nsw i32 %209, 1
  store i32 %inc470, i32* %xx, align 4
  br label %for.cond.7

for.end.471:                                      ; preds = %for.cond.7
  br label %for.inc.472

for.inc.472:                                      ; preds = %for.end.471
  %210 = load i32, i32* %yy, align 4
  %inc473 = add nsw i32 %210, 1
  store i32 %inc473, i32* %yy, align 4
  br label %for.cond.4

for.end.474:                                      ; preds = %for.cond.4
  store i32 0, i32* %i, align 4
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.497, %for.end.474
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* %bpp.addr, align 4
  %cmp476 = icmp slt i32 %211, %212
  br i1 %cmp476, label %for.body.478, label %for.end.499

for.body.478:                                     ; preds = %for.cond.475
  %213 = load i32, i32* %i, align 4
  %cmp479 = icmp slt i32 %213, 3
  br i1 %cmp479, label %if.then.481, label %if.else.493

if.then.481:                                      ; preds = %for.body.478
  %214 = load i32, i32* %i, align 4
  %idxprom482 = sext i32 %214 to i64
  %arrayidx483 = getelementptr inbounds [3 x i32], [3 x i32]* %accum, i32 0, i64 %idxprom482
  %215 = load i32, i32* %arrayidx483, align 4
  %conv484 = sitofp i32 %215 to float
  %216 = load i32, i32* %oversampling.addr, align 4
  %217 = load i32, i32* %oversampling.addr, align 4
  %mul485 = mul nsw i32 %216, %217
  %conv486 = sitofp i32 %mul485 to float
  %div487 = fdiv float %conv484, %conv486
  %conv488 = fpext float %div487 to double
  %add489 = fadd double %conv488, 5.000000e-01
  %conv490 = fptoui double %add489 to i8
  %218 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %218 to i64
  %219 = load i8*, i8** %buffer.addr, align 8
  %arrayidx492 = getelementptr inbounds i8, i8* %219, i64 %idxprom491
  store i8 %conv490, i8* %arrayidx492, align 1
  br label %if.end.496

if.else.493:                                      ; preds = %for.body.478
  %220 = load i32, i32* %i, align 4
  %idxprom494 = sext i32 %220 to i64
  %221 = load i8*, i8** %buffer.addr, align 8
  %arrayidx495 = getelementptr inbounds i8, i8* %221, i64 %idxprom494
  store i8 -1, i8* %arrayidx495, align 1
  br label %if.end.496

if.end.496:                                       ; preds = %if.else.493, %if.then.481
  br label %for.inc.497

for.inc.497:                                      ; preds = %if.end.496
  %222 = load i32, i32* %i, align 4
  %inc498 = add nsw i32 %222, 1
  store i32 %inc498, i32* %i, align 4
  br label %for.cond.475

for.end.499:                                      ; preds = %for.cond.475
  %223 = load i32, i32* %bpp.addr, align 4
  %224 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %223 to i64
  %add.ptr = getelementptr inbounds i8, i8* %224, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  br label %for.inc.500

for.inc.500:                                      ; preds = %for.end.499
  %225 = load i32, i32* %gx, align 4
  %inc501 = add nsw i32 %225, 1
  store i32 %inc501, i32* %gx, align 4
  br label %for.cond

for.end.502:                                      ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_displays_flush() #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #4

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_new_variations(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 %idxprom
  call void @modify_info(%struct.ExpInfo* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0), %struct.ExpInfo* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_select_preview(%struct._GtkWidget* %widget, %struct.ExpInfo* %n_info) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %n_info.addr = alloca %struct.ExpInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ExpInfo* %n_info, %struct.ExpInfo** %n_info.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @last_info to i8*), i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i64 5184, i32 16, i1 false)
  %0 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %1 = bitcast %struct.ExpInfo* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i8* %1, i64 576, i32 4, i1 false)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @dialog_new_variations(%struct._GtkWidget* %2, i8* null)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @dialog_update_previews(%struct._GtkWidget* %3, i8* null)
  ret void
}

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @dialog_toggle_antialaising(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  %cond = select i1 %tobool, i32 4, i32 1
  store i32 %cond, i32* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 1), align 4
  ret void
}

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare void @gtk_button_box_set_layout(%struct._GtkButtonBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_box_get_type() #4

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_undo(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %temp_info = alloca [9 x %struct.ExpInfo], align 16
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = bitcast [9 x %struct.ExpInfo]* %temp_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i64 5184, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @info to i8*), i8* bitcast ([9 x %struct.ExpInfo]* @last_info to i8*), i64 5184, i32 16, i1 false)
  call void @dialog_update_previews(%struct._GtkWidget* null, i8* null)
  %1 = bitcast [9 x %struct.ExpInfo]* %temp_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([9 x %struct.ExpInfo]* @last_info to i8*), i8* %1, i64 5184, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_load(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call1, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_file_chooser_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkFileChooser*
  %call11 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %12, i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0))
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkDialog*
  %call14 = call i32 @gtk_dialog_run(%struct._GtkDialog* %15)
  %cmp = icmp eq i32 %call14, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_file_chooser_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkFileChooser*
  %call17 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %18)
  store i8* %call17, i8** %name, align 8
  %19 = load i8*, i8** %name, align 8
  %call18 = call i8* @strncpy(i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0), i8* %19, i64 4095) #2
  %call19 = call i32 @load_data(i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0))
  %20 = load i8*, i8** %name, align 8
  call void @g_free(i8* %20)
  call void @dialog_new_variations(%struct._GtkWidget* null, i8* null)
  call void @dialog_update_previews(%struct._GtkWidget* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_save(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0)) #2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call1, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_file_chooser_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_file_chooser_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkFileChooser*
  %call13 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %15, i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0))
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call i32 @gtk_dialog_run(%struct._GtkDialog* %18)
  %cmp = icmp eq i32 %call16, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_file_chooser_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFileChooser*
  %call19 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %21)
  store i8* %call19, i8** %name, align 8
  %22 = load i8*, i8** %name, align 8
  %call20 = call i8* @strncpy(i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0), i8* %22, i64 4095) #2
  %call21 = call i32 @save_data(i8* getelementptr inbounds (%struct.QbistInfo, %struct.QbistInfo* @qbist_info, i32 0, i32 2, i32 0))
  %23 = load i8*, i8** %name, align 8
  call void @g_free(i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_update_previews(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca [12288 x i8], align 16
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %add = add nsw i32 %1, 5
  %rem = srem i32 %add, 9
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 %idxprom
  call void @optimize(%struct.ExpInfo* %arrayidx)
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %3, 5
  %rem5 = srem i32 %add4, 9
  %idxprom6 = sext i32 %rem5 to i64
  %arrayidx7 = getelementptr inbounds [9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [12288 x i8], [12288 x i8]* %buf, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 64
  %mul8 = mul nsw i32 %mul, 3
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %5 = load i32, i32* %i, align 4
  call void @qbist(%struct.ExpInfo* %arrayidx7, i8* %add.ptr, i32 0, i32 %5, i32 64, i32 64, i32 64, i32 3, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %7 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @preview, i32 0, i64 %idxprom9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx10, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpPreviewArea*
  %arraydecay12 = getelementptr inbounds [12288 x i8], [12288 x i8]* %buf, i32 0, i32 0
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %10, i32 0, i32 0, i32 64, i32 64, i32 0, i8* %arraydecay12, i32 192)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %11 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #4

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @modify_info(%struct.ExpInfo* %o_info, %struct.ExpInfo* %n_info) #0 {
entry:
  %o_info.addr = alloca %struct.ExpInfo*, align 8
  %n_info.addr = alloca %struct.ExpInfo*, align 8
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.ExpInfo* %o_info, %struct.ExpInfo** %o_info.addr, align 8
  store %struct.ExpInfo* %n_info, %struct.ExpInfo** %n_info.addr, align 8
  %0 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %1 = load %struct.ExpInfo*, %struct.ExpInfo** %o_info.addr, align 8
  %2 = bitcast %struct.ExpInfo* %0 to i8*
  %3 = bitcast %struct.ExpInfo* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 576, i32 4, i1 false)
  %4 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call = call i32 @g_rand_int_range(%struct._GRand* %4, i32 0, i32 36)
  store i32 %call, i32* %n, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call1 = call i32 @g_rand_int_range(%struct._GRand* %7, i32 0, i32 4)
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %for.body
  %8 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call2 = call i32 @g_rand_int_range(%struct._GRand* %8, i32 0, i32 9)
  %9 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call3 = call i32 @g_rand_int_range(%struct._GRand* %9, i32 0, i32 36)
  %idxprom = sext i32 %call3 to i64
  %10 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %transformSequence = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* %transformSequence, i32 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %11 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call5 = call i32 @g_rand_int_range(%struct._GRand* %11, i32 0, i32 6)
  %12 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call6 = call i32 @g_rand_int_range(%struct._GRand* %12, i32 0, i32 36)
  %idxprom7 = sext i32 %call6 to i64
  %13 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %source = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [36 x i32], [36 x i32]* %source, i32 0, i64 %idxprom7
  store i32 %call5, i32* %arrayidx8, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %14 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call10 = call i32 @g_rand_int_range(%struct._GRand* %14, i32 0, i32 6)
  %15 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call11 = call i32 @g_rand_int_range(%struct._GRand* %15, i32 0, i32 36)
  %idxprom12 = sext i32 %call11 to i64
  %16 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %control = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %16, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [36 x i32], [36 x i32]* %control, i32 0, i64 %idxprom12
  store i32 %call10, i32* %arrayidx13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body
  %17 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call15 = call i32 @g_rand_int_range(%struct._GRand* %17, i32 0, i32 6)
  %18 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call16 = call i32 @g_rand_int_range(%struct._GRand* %18, i32 0, i32 36)
  %idxprom17 = sext i32 %call16 to i64
  %19 = load %struct.ExpInfo*, %struct.ExpInfo** %n_info.addr, align 8
  %dest = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %19, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [36 x i32], [36 x i32]* %dest, i32 0, i64 %idxprom17
  store i32 %call15, i32* %arrayidx18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.14, %sw.bb.9, %sw.bb.4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #4

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_data(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [288 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 288, %struct._IO_FILE* %2)
  %cmp2 = icmp ne i64 %call1, 288
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %3)
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %5, 36
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %6, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %call10 = call zeroext i16 @get_be16(i8* %add.ptr9)
  %conv = zext i16 %call10 to i32
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 0), i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.24, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %9, 36
  br i1 %cmp12, label %for.body.14, label %for.end.26

for.body.14:                                      ; preds = %for.cond.11
  %arraydecay15 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %10, 2
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay15, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 72
  %call20 = call zeroext i16 @get_be16(i8* %add.ptr19)
  %conv21 = zext i16 %call20 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 1), i32 0, i64 %idxprom22
  store i32 %conv21, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.14
  %12 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.11

for.end.26:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.40, %for.end.26
  %13 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %13, 36
  br i1 %cmp28, label %for.body.30, label %for.end.42

for.body.30:                                      ; preds = %for.cond.27
  %arraydecay31 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %mul32 = mul nsw i32 %14, 2
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay31, i64 %idx.ext33
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr34, i64 144
  %call36 = call zeroext i16 @get_be16(i8* %add.ptr35)
  %conv37 = zext i16 %call36 to i32
  %15 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %15 to i64
  %arrayidx39 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 2), i32 0, i64 %idxprom38
  store i32 %conv37, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.30
  %16 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %16, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.27

for.end.42:                                       ; preds = %for.cond.27
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.56, %for.end.42
  %17 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %17, 36
  br i1 %cmp44, label %for.body.46, label %for.end.58

for.body.46:                                      ; preds = %for.cond.43
  %arraydecay47 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %mul48 = mul nsw i32 %18, 2
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %arraydecay47, i64 %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr50, i64 216
  %call52 = call zeroext i16 @get_be16(i8* %add.ptr51)
  %conv53 = zext i16 %call52 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %19 to i64
  %arrayidx55 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 3), i32 0, i64 %idxprom54
  store i32 %conv53, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.46
  %20 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %20, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.43

for.end.58:                                       ; preds = %for.cond.43
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.58, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @g_free(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @get_be16(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %or = or i32 %shl, %conv3
  %conv4 = trunc i32 %or to i16
  ret i16 %conv4
}

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_data(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca [288 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 36
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 0), i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @set_be16(i8* %add.ptr2, i16 zeroext %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.15, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 36
  br i1 %cmp4, label %for.body.6, label %for.end.17

for.body.6:                                       ; preds = %for.cond.3
  %arraydecay7 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %8, 2
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 72
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 1), i32 0, i64 %idxprom12
  %10 = load i32, i32* %arrayidx13, align 4
  %conv14 = trunc i32 %10 to i16
  call void @set_be16(i8* %add.ptr11, i16 zeroext %conv14)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.6
  %11 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.3

for.end.17:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.30, %for.end.17
  %12 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %12, 36
  br i1 %cmp19, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.18
  %arraydecay22 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %i, align 4
  %mul23 = mul nsw i32 %13, 2
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %arraydecay22, i64 %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr25, i64 144
  %14 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 2), i32 0, i64 %idxprom27
  %15 = load i32, i32* %arrayidx28, align 4
  %conv29 = trunc i32 %15 to i16
  call void @set_be16(i8* %add.ptr26, i16 zeroext %conv29)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.21
  %16 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %16, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.18

for.end.32:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %for.end.32
  %17 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %17, 36
  br i1 %cmp34, label %for.body.36, label %for.end.47

for.body.36:                                      ; preds = %for.cond.33
  %arraydecay37 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 %18, 2
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %arraydecay37, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr40, i64 216
  %19 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %19 to i64
  %arrayidx43 = getelementptr inbounds [36 x i32], [36 x i32]* getelementptr inbounds ([9 x %struct.ExpInfo], [9 x %struct.ExpInfo]* @info, i32 0, i64 0, i32 3), i32 0, i64 %idxprom42
  %20 = load i32, i32* %arrayidx43, align 4
  %conv44 = trunc i32 %20 to i16
  call void @set_be16(i8* %add.ptr41, i16 zeroext %conv44)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.36
  %21 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %21, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  %arraydecay48 = getelementptr inbounds [288 x i8], [288 x i8]* %buf, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call49 = call i64 @fwrite(i8* %arraydecay48, i64 1, i64 288, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.47, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @set_be16(i8* %buf, i16 zeroext %val) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %val.addr = alloca i16, align 2
  store i8* %buf, i8** %buf.addr, align 8
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i8
  %1 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %2 = load i16, i16* %val.addr, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 255
  %conv3 = trunc i32 %and to i8
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @check_last_modified(%struct.ExpInfo* %info, i32 %p, i32 %n) #0 {
entry:
  %info.addr = alloca %struct.ExpInfo*, align 8
  %p.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store %struct.ExpInfo* %info, %struct.ExpInfo** %info.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %p.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %p.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %dest = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* %dest, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %p.addr, align 4
  %dec2 = add nsw i32 %7, -1
  store i32 %dec2, i32* %p.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %p.addr, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %9 = load i32, i32* %n.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* @used_reg_flag, i32 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  %10 = load i32, i32* %p.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [36 x i32], [36 x i32]* @used_trans_flag, i32 0, i64 %idxprom6
  store i32 1, i32* %arrayidx7, align 4
  %11 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %12 = load i32, i32* %p.addr, align 4
  %13 = load i32, i32* %p.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %source = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [36 x i32], [36 x i32]* %source, i32 0, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  call void @check_last_modified(%struct.ExpInfo* %11, i32 %12, i32 %15)
  %16 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %17 = load i32, i32* %p.addr, align 4
  %18 = load i32, i32* %p.addr, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.ExpInfo*, %struct.ExpInfo** %info.addr, align 8
  %control = getelementptr inbounds %struct.ExpInfo, %struct.ExpInfo* %19, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [36 x i32], [36 x i32]* %control, i32 0, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  call void @check_last_modified(%struct.ExpInfo* %16, i32 %17, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
