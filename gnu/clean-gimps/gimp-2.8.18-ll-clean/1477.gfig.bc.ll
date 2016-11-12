; ModuleID = './plug-ins/gfig/gfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GdkPixbuf = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct._GfigObject = type { i32, %struct.GfigObjectClass*, i32, %struct.DobjPoints*, %struct._Style, i32 }
%struct.GfigObjectClass = type { i32, i8*, void (%struct._GfigObject*, %struct._cairo*)*, void (%struct._GfigObject*)*, %struct._GfigObject* (%struct._GfigObject*)*, void (%struct._GdkPoint*)* }
%struct._cairo = type opaque
%struct._GdkPoint = type { i32, i32 }
%struct.DobjPoints = type { %struct.DobjPoints*, %struct._GdkPoint, i32 }
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct.BrushDesc = type { i8*, double, i32, i32, i32, i32, i8*, i16, i16, i8* }
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
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@obj_show_single = global i32 -1, align 4
@back_pixbuf = global %struct._GdkPixbuf* null, align 8
@g_ascii_table = external constant i16*, align 8
@.str = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3o\00", align 1
@gfig_list = global %struct._GList* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"gfig.c\00", align 1
@__func__.gfig_free = private unnamed_addr constant [10 x i8] c"gfig_free\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gfig != NULL\00", align 1
@__func__.gfig_load = private unnamed_addr constant [10 x i8] c"gfig_load\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%10s %10s %lf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"GFIG\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"File '%s' is not a gfig file\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Name: %100s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Version: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"ObjCount: %d\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"File '%s' corrupt file - Line %d Option section incorrect\00", align 1
@line_no = global i32 0, align 4
@.str.15 = private unnamed_addr constant [55 x i8] c"File '%s' corrupt file - Line %d Object count to small\00", align 1
@gfig_context = global %struct.GFigContext* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"<OPTIONS>\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"GridSpacing: %d\0A\00", align 1
@selvals = external global %struct.SelectItVals, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"GridType: RECT_GRID\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"GridType: POLAR_GRID\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"GridType: ISO_GRID\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"DrawGrid: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Snap2Grid: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"LockOnGrid: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ShowControl: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"</OPTIONS>\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"GFIG Version 0.2\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ObjCount: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"gfig\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"Error trying to save figure as a parasite: can't attach parasite to drawable.\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"gfigtmp\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"Error trying to open temporary file '%s' for parasite loading: %s\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Failed to write file.\00", align 1
@obj_creating = global %struct._GfigObject* null, align 8
@tmp_line = global %struct._GfigObject* null, align 8
@need_to_scale = global i32 0, align 4
@dobj_class = global [10 x %struct.GfigObjectClass] zeroinitializer, align 16
@top_level_dlg = global %struct._GtkWidget* null, align 8
@gfig_drawable = global %struct._GimpDrawable* null, align 8
@org_scale_x_factor = global double 0.000000e+00, align 8
@org_scale_y_factor = global double 0.000000e+00, align 8
@preview_width = global i32 0, align 4
@preview_height = global i32 0, align 4
@scale_x_factor = global double 0.000000e+00, align 8
@scale_y_factor = global double 0.000000e+00, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.43, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0) }], align 16
@.str.42 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.43 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"plug-in-gfig\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Create geometric shapes\00", align 1
@.str.51 = private unnamed_addr constant [342 x i8] c"Draw Vector Graphics and paint them onto your images.  Gfig allows you to draw many types of objects including Lines, Circles, Ellipses, Curves, Polygons, pointed stars, Bezier curves, and Spirals.  Objects can be painted using Brushes or other toolsor filled using colours or patterns.  Gfig objects can also be used to create selections.  \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"_Gfig...\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"<Image>/Filters/Render\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@.str.59 = private unnamed_addr constant [39 x i8] c"Failed to load object, load count = %d\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"<OPTIONS>\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"</OPTIONS>\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"%255s %255s\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"GridSpacing:\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"DrawGrid:\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Snap2Grid:\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"LockOnGrid:\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"ShowControl:\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"GridType:\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"RECT_GRID\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"POLAR_GRID\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ISO_GRID\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"<%s \00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"</%s>\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([342 x i8], [342 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
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
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %call4 = call noalias i8* @g_malloc0_n(i64 1, i64 344)
  %0 = bitcast i8* %call4 to %struct.GFigContext*
  store %struct.GFigContext* %0, %struct.GFigContext** @gfig_context, align 8
  %1 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %show_background = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %1, i32 0, i32 1
  store i32 1, i32* %show_background, align 4
  %2 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %selected_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %2, i32 0, i32 5
  store %struct._GfigObject* null, %struct._GfigObject** %selected_obj, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %run_mode, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_image, align 4
  %7 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %7, i32 0, i32 2
  store i32 %6, i32* %image_id, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  %10 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %10, i32 0, i32 3
  store i32 %9, i32* %drawable_id, align 4
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %12, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %13 = load i32, i32* %status, align 4
  store i32 %13, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %14 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id9 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %14, i32 0, i32 2
  %15 = load i32, i32* %image_id9, align 4
  %call10 = call i32 @gimp_image_undo_group_start(i32 %15)
  %call11 = call i32 @gimp_context_push()
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 2
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_drawable14 = bitcast %union._GimpParamData* %data13 to i32*
  %17 = load i32, i32* %d_drawable14, align 4
  %call15 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %17)
  store %struct._GimpDrawable* %call15, %struct._GimpDrawable** %drawable, align 8
  %18 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id16 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %18, i32 0, i32 2
  %19 = load i32, i32* %image_id16, align 4
  %call17 = call i32 @gimp_selection_is_empty(i32 %19)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %20 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id18 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %20, i32 0, i32 2
  %21 = load i32, i32* %image_id18, align 4
  %call19 = call i32 @gimp_selection_none(i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id20, align 4
  %call21 = call i32 @gimp_drawable_mask_bounds(i32 %23, i32* @sel_x1, i32* @sel_y1, i32* @sel_x2, i32* @sel_y2)
  %24 = load i32, i32* @sel_x2, align 4
  %25 = load i32, i32* @sel_x1, align 4
  %sub = sub nsw i32 %24, %25
  store i32 %sub, i32* @sel_width, align 4
  %26 = load i32, i32* @sel_y2, align 4
  %27 = load i32, i32* @sel_y1, align 4
  %sub22 = sub nsw i32 %26, %27
  store i32 %sub22, i32* @sel_height, align 4
  %28 = load i32, i32* @sel_width, align 4
  %29 = load i32, i32* @sel_height, align 4
  %cmp = icmp sgt i32 %28, %29
  br i1 %cmp, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %30 = load i32, i32* @sel_width, align 4
  %cmp24 = icmp slt i32 %30, 400
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  %31 = load i32, i32* @sel_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 400, %cond.false ]
  store i32 %cond, i32* %pwidth, align 4
  %32 = load i32, i32* @sel_height, align 4
  %33 = load i32, i32* %pwidth, align 4
  %mul = mul nsw i32 %32, %33
  %34 = load i32, i32* @sel_width, align 4
  %div = sdiv i32 %mul, %34
  store i32 %div, i32* %pheight, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %35 = load i32, i32* @sel_height, align 4
  %cmp25 = icmp slt i32 %35, 400
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.else
  %36 = load i32, i32* @sel_height, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.else
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i32 [ %36, %cond.true.26 ], [ 400, %cond.false.27 ]
  store i32 %cond29, i32* %pheight, align 4
  %37 = load i32, i32* @sel_width, align 4
  %38 = load i32, i32* %pheight, align 4
  %mul30 = mul nsw i32 %37, %38
  %39 = load i32, i32* @sel_height, align 4
  %div31 = sdiv i32 %mul30, %39
  store i32 %div31, i32* %pwidth, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.28, %cond.end
  %40 = load i32, i32* %pwidth, align 4
  %cmp33 = icmp sgt i32 %40, 2
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.end.32
  %41 = load i32, i32* %pwidth, align 4
  br label %cond.end.36

cond.false.35:                                    ; preds = %if.end.32
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %41, %cond.true.34 ], [ 2, %cond.false.35 ]
  store i32 %cond37, i32* @preview_width, align 4
  %42 = load i32, i32* %pheight, align 4
  %cmp38 = icmp sgt i32 %42, 2
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.36
  %43 = load i32, i32* %pheight, align 4
  br label %cond.end.41

cond.false.40:                                    ; preds = %cond.end.36
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ %43, %cond.true.39 ], [ 2, %cond.false.40 ]
  store i32 %cond42, i32* @preview_height, align 4
  %44 = load i32, i32* @sel_width, align 4
  %conv = sitofp i32 %44 to double
  %45 = load i32, i32* @preview_width, align 4
  %conv43 = sitofp i32 %45 to double
  %div44 = fdiv double %conv, %conv43
  store double %div44, double* @scale_x_factor, align 8
  store double %div44, double* @org_scale_x_factor, align 8
  %46 = load i32, i32* @sel_height, align 4
  %conv45 = sitofp i32 %46 to double
  %47 = load i32, i32* @preview_height, align 4
  %conv46 = sitofp i32 %47 to double
  %div47 = fdiv double %conv45, %conv46
  store double %div47, double* @scale_y_factor, align 8
  store double %div47, double* @org_scale_y_factor, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %48, i32 0, i32 1
  %49 = load i32, i32* %width, align 4
  %call48 = call i32 @gimp_tile_width() #7
  %add = add i32 %49, %call48
  %sub49 = sub i32 %add, 1
  %call50 = call i32 @gimp_tile_width() #7
  %div51 = udiv i32 %sub49, %call50
  %conv52 = zext i32 %div51 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv52)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %50)
  call void @gfig_init_object_classes()
  %51 = load i32, i32* %run_mode, align 4
  switch i32 %51, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.59
  ]

sw.bb:                                            ; preds = %cond.end.41, %cond.end.41
  %call53 = call i32 @gfig_dialog()
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.58, label %if.then.55

if.then.55:                                       ; preds = %sw.bb
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** @gfig_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %52)
  %53 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id56 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %53, i32 0, i32 2
  %54 = load i32, i32* %image_id56, align 4
  %call57 = call i32 @gimp_image_undo_group_end(i32 %54)
  br label %return

if.end.58:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.59:                                         ; preds = %cond.end.41
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.59, %if.end.58
  %call60 = call i32 @gimp_context_pop()
  %55 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %image_id61 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %55, i32 0, i32 2
  %56 = load i32, i32* %image_id61, align 4
  %call62 = call i32 @gimp_image_undo_group_end(i32 %56)
  %57 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp ne i32 %57, 1
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %sw.epilog
  %call66 = call i32 @gimp_displays_flush()
  br label %if.end.68

if.else.67:                                       ; preds = %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.65
  %58 = load i32, i32* %status, align 4
  store i32 %58, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.68, %if.then.55
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

; Function Attrs: nounwind uwtable
define void @gfig_name_encode(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 255, i32* %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %cnt, align 4
  %tobool1 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, 4
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom4 = zext i8 %9 to i64
  %10 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i64 %idxprom4
  %11 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %11 to i32
  %and7 = and i32 %conv6, 256
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %src.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 92
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %while.body
  %14 = load i8*, i8** %dest.addr, align 8
  %15 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = sext i8 %16 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %conv14) #6
  %17 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.10
  %18 = load i8*, i8** %src.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr15, i8** %src.addr, align 8
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr16, i8** %dest.addr, align 8
  store i8 %19, i8* %20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %21, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gfig_name_decode(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 255, i32* %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %cnt, align 4
  %tobool1 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv2, 92
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %add.ptr, align 1
  %conv4 = sext i8 %7 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %src.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %add.ptr7, align 1
  %conv8 = sext i8 %9 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %add.ptr11, align 1
  %conv12 = sext i8 %11 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10
  %12 = load i8*, i8** %src.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 1
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32* %tmp) #6
  %13 = load i32, i32* %tmp, align 4
  %conv15 = trunc i32 %13 to i8
  %14 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv15, i8* %14, align 1
  %15 = load i8*, i8** %src.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr16, i8** %src.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %while.body
  %16 = load i8*, i8** %src.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %src.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %dest.addr, align 8
  store i8 %17, i8* %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %19, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @gfig_list_pos(%struct._GFigObj* %gfig) #0 {
entry:
  %gfig.addr = alloca %struct._GFigObj*, align 8
  %g = alloca %struct._GFigObj*, align 8
  %n = alloca i32, align 4
  %tmp = alloca %struct._GList*, align 8
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._GList*, %struct._GList** @gfig_list, align 8
  store %struct._GList* %0, %struct._GList** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GFigObj*
  store %struct._GFigObj* %4, %struct._GFigObj** %g, align 8
  %5 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %draw_name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 2
  %6 = load i8*, i8** %draw_name, align 8
  %7 = load %struct._GFigObj*, %struct._GFigObj** %g, align 8
  %draw_name1 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 2
  %8 = load i8*, i8** %draw_name1, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gfig_list_insert(%struct._GFigObj* %gfig) #0 {
entry:
  %gfig.addr = alloca %struct._GFigObj*, align 8
  %n = alloca i32, align 4
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  %0 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %call = call i32 @gfig_list_pos(%struct._GFigObj* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct._GList*, %struct._GList** @gfig_list, align 8
  %2 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %3 = bitcast %struct._GFigObj* %2 to i8*
  %4 = load i32, i32* %n, align 4
  %call1 = call %struct._GList* @g_list_insert(%struct._GList* %1, i8* %3, i32 %4)
  store %struct._GList* %call1, %struct._GList** @gfig_list, align 8
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @gfig_free(%struct._GFigObj* %gfig) #0 {
entry:
  %gfig.addr = alloca %struct._GFigObj*, align 8
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %cmp = icmp ne %struct._GFigObj* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gfig_free, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 5
  %2 = load %struct._GList*, %struct._GList** %obj_list, align 8
  call void @free_all_objs(%struct._GList* %2)
  %3 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %filename = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 1
  %6 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %draw_name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 2
  %8 = load i8*, i8** %draw_name, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %10 = bitcast %struct._GFigObj* %9 to i8*
  call void @g_free(i8* %10)
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare void @free_all_objs(%struct._GList*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GFigObj* @gfig_new() #0 {
entry:
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 136)
  %0 = bitcast i8* %call to %struct._GFigObj*
  ret %struct._GFigObj* %0
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GFigObj* @gfig_load(i8* %filename, i8* %name) #0 {
entry:
  %retval = alloca %struct._GFigObj*, align 8
  %filename.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %load_buf = alloca [256 x i8], align 16
  %str_buf = alloca [256 x i8], align 16
  %chk_count = alloca i32, align 4
  %load_count = alloca i32, align 4
  %version = alloca double, align 8
  %magic1 = alloca [20 x i8], align 16
  %magic2 = alloca [20 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %load_count, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gfig_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #6
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call4 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %4) #7
  call void (i8*, ...) @g_message(i8* %call2, i8* %call3, i8* %call5)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %call7 = call %struct._GFigObj* @gfig_new()
  store %struct._GFigObj* %call7, %struct._GFigObj** %gfig, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call8 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %name9 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %6, i32 0, i32 0
  store i8* %call8, i8** %name9, align 8
  %7 = load i8*, i8** %filename.addr, align 8
  %call10 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %filename11 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %8, i32 0, i32 1
  store i8* %call10, i8** %filename11, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %9, i32 1)
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [20 x i8], [20 x i8]* %magic1, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [20 x i8], [20 x i8]* %magic2, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay14, i8* %arraydecay15, double* %version) #6
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %magic1, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %arraydecay20 = getelementptr inbounds [20 x i8], [20 x i8]* %magic2, i32 0, i32 0
  %call21 = call i32 @strcmp(i8* %arraydecay20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.6
  %10 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %filename24 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %10, i32 0, i32 1
  %11 = load i8*, i8** %filename24, align 8
  %call25 = call i8* @gimp_filename_to_utf8(i8* %11)
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* %call25)
  %12 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @gfig_free(%struct._GFigObj* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %13)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i8* @get_line(i8* %arraydecay28, i32 256, %struct._IO_FILE* %14, i32 0)
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay31) #6
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  call void @gfig_name_decode(i8* %arraydecay33, i8* %arraydecay34)
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call36 = call noalias i8* @g_strdup(i8* %arraydecay35)
  %15 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %draw_name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %15, i32 0, i32 2
  store i8* %call36, i8** %draw_name, align 8
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i8* @get_line(i8* %arraydecay37, i32 256, %struct._IO_FILE* %16, i32 0)
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call40 = call i32 @strncmp(i8* %arraydecay39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i64 9) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.27
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay43, i64 9
  %call44 = call double @g_ascii_strtod(i8* %add.ptr, i8** null)
  %conv = fptrunc double %call44 to float
  %17 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %version45 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %17, i32 0, i32 3
  store float %conv, float* %version45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.27
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call48 = call i8* @get_line(i8* %arraydecay47, i32 256, %struct._IO_FILE* %18, i32 0)
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call50 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %load_count) #6
  %19 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call51 = call i32 @load_options(%struct._GFigObj* %19, %struct._IO_FILE* %20)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.46
  %21 = load i8*, i8** %filename.addr, align 8
  %call54 = call i8* @gimp_filename_to_utf8(i8* %21)
  %22 = load i32, i32* @line_no, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i32 0, i32 0), i8* %call54, i32 %22)
  %23 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @gfig_free(%struct._GFigObj* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call55 = call i32 @fclose(%struct._IO_FILE* %24)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.46
  %25 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call i32 @gfig_load_styles(%struct._GFigObj* %25, %struct._IO_FILE* %26)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.56
  %27 = load i8*, i8** %filename.addr, align 8
  %call60 = call i8* @gimp_filename_to_utf8(i8* %27)
  %28 = load i32, i32* @line_no, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i32 0, i32 0), i8* %call60, i32 %28)
  %29 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @gfig_free(%struct._GFigObj* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call61 = call i32 @fclose(%struct._IO_FILE* %30)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.56
  %31 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %32 = load i32, i32* %load_count, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gfig_load_objs(%struct._GFigObj* %31, i32 %32, %struct._IO_FILE* %33)
  %34 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %34, i32 0, i32 5
  %35 = load %struct._GList*, %struct._GList** %obj_list, align 8
  %call63 = call i32 @g_list_length(%struct._GList* %35)
  store i32 %call63, i32* %chk_count, align 4
  %36 = load i32, i32* %chk_count, align 4
  %37 = load i32, i32* %load_count, align 4
  %cmp64 = icmp ne i32 %36, %37
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.62
  %38 = load i8*, i8** %filename.addr, align 8
  %call67 = call i8* @gimp_filename_to_utf8(i8* %38)
  %39 = load i32, i32* @line_no, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* %call67, i32 %39)
  %40 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  call void @gfig_free(%struct._GFigObj* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %41)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.62
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %42)
  %43 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %43, i32 0, i32 4
  %44 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %tobool71 = icmp ne %struct._GFigObj* %44, null
  br i1 %tobool71, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  %45 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %46 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj73 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %46, i32 0, i32 4
  store %struct._GFigObj* %45, %struct._GFigObj** %current_obj73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.69
  %47 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %47, i32 0, i32 6
  store i32 0, i32* %obj_status, align 4
  %48 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  store %struct._GFigObj* %48, %struct._GFigObj** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.66, %if.then.59, %if.then.53, %if.then.23, %if.then.1
  %49 = load %struct._GFigObj*, %struct._GFigObj** %retval
  ret %struct._GFigObj* %49
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare noalias i8* @g_strdup(i8*) #1

declare i8* @get_line(i8*, i32, %struct._IO_FILE*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_options(%struct._GFigObj* %gfig, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i32, align 4
  %gfig.addr = alloca %struct._GFigObj*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %load_buf = alloca [256 x i8], align 16
  %str_buf = alloca [256 x i8], align 16
  %opt_buf = alloca [256 x i8], align 16
  %sp = alloca i32, align 4
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %0, i32 0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i8* @get_line(i8* %arraydecay3, i32 256, %struct._IO_FILE* %1, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %if.end
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %call6 = call i32 @strcmp(i8* %arraydecay5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* %arraydecay9, i8* %arraydecay10) #6
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* %arraydecay12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0)) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %while.body
  store i32 0, i32* %sp, align 4
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call17 = call i32 @atoi(i8* %arraydecay16) #8
  store i32 %call17, i32* %sp, align 4
  %2 = load i32, i32* %sp, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %3 = load i32, i32* %sp, align 4
  %4 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %4, i32 0, i32 4
  %gridspacing = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts, i32 0, i32 0
  store i32 %3, i32* %gridspacing, align 4
  br label %if.end.96

if.else:                                          ; preds = %while.body
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call21 = call i32 @strcmp(i8* %arraydecay20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0)) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.30, label %if.then.23

if.then.23:                                       ; preds = %if.else
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %5 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts25 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %5, i32 0, i32 4
  %drawgrid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts25, i32 0, i32 2
  %call26 = call i32 @load_bool(i8* %arraydecay24, i32* %drawgrid)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.23
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.23
  br label %if.end.95

if.else.30:                                       ; preds = %if.else
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0)) #8
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.41, label %if.then.34

if.then.34:                                       ; preds = %if.else.30
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %6 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts36 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %6, i32 0, i32 4
  %snap2grid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts36, i32 0, i32 3
  %call37 = call i32 @load_bool(i8* %arraydecay35, i32* %snap2grid)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.34
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.34
  br label %if.end.94

if.else.41:                                       ; preds = %if.else.30
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call43 = call i32 @strcmp(i8* %arraydecay42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0)) #8
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.52, label %if.then.45

if.then.45:                                       ; preds = %if.else.41
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %7 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts47 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %7, i32 0, i32 4
  %lockongrid = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts47, i32 0, i32 4
  %call48 = call i32 @load_bool(i8* %arraydecay46, i32* %lockongrid)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.93

if.else.52:                                       ; preds = %if.else.41
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call54 = call i32 @strcmp(i8* %arraydecay53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0)) #8
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.63, label %if.then.56

if.then.56:                                       ; preds = %if.else.52
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %8 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts58 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %8, i32 0, i32 4
  %showcontrol = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts58, i32 0, i32 5
  %call59 = call i32 @load_bool(i8* %arraydecay57, i32* %showcontrol)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.56
  br label %if.end.92

if.else.63:                                       ; preds = %if.else.52
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %str_buf, i32 0, i32 0
  %call65 = call i32 @strcmp(i8* %arraydecay64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0)) #8
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.91, label %if.then.67

if.then.67:                                       ; preds = %if.else.63
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call69 = call i32 @strcmp(i8* %arraydecay68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0)) #8
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else.73, label %if.then.71

if.then.71:                                       ; preds = %if.then.67
  %9 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts72 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 4
  %gridtype = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts72, i32 0, i32 1
  store i32 0, i32* %gridtype, align 4
  br label %if.end.90

if.else.73:                                       ; preds = %if.then.67
  %arraydecay74 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call75 = call i32 @strcmp(i8* %arraydecay74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0)) #8
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.else.80, label %if.then.77

if.then.77:                                       ; preds = %if.else.73
  %10 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts78 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %10, i32 0, i32 4
  %gridtype79 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts78, i32 0, i32 1
  store i32 1, i32* %gridtype79, align 4
  br label %if.end.89

if.else.80:                                       ; preds = %if.else.73
  %arraydecay81 = getelementptr inbounds [256 x i8], [256 x i8]* %opt_buf, i32 0, i32 0
  %call82 = call i32 @strcmp(i8* %arraydecay81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0)) #8
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.else.87, label %if.then.84

if.then.84:                                       ; preds = %if.else.80
  %11 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %opts85 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %11, i32 0, i32 4
  %gridtype86 = getelementptr inbounds %struct.GfigOpts, %struct.GfigOpts* %opts85, i32 0, i32 1
  store i32 2, i32* %gridtype86, align 4
  br label %if.end.88

if.else.87:                                       ; preds = %if.else.80
  store i32 -1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.then.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.71
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.else.63
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.62
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.51
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.40
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.29
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.19
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call98 = call i8* @get_line(i8* %arraydecay97, i32 256, %struct._IO_FILE* %12, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.87, %if.then.61, %if.then.50, %if.then.39, %if.then.28, %if.then.18, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gfig_load_styles(%struct._GFigObj*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_load_objs(%struct._GFigObj* %gfig, i32 %load_count, %struct._IO_FILE* %fp) #0 {
entry:
  %gfig.addr = alloca %struct._GFigObj*, align 8
  %load_count.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %obj = alloca %struct._GfigObject*, align 8
  %load_buf = alloca [256 x i8], align 16
  %offset = alloca i64, align 8
  %offset2 = alloca i64, align 8
  %style = alloca %struct._Style, align 8
  store %struct._GFigObj* %gfig, %struct._GFigObj** %gfig.addr, align 8
  store i32 %load_count, i32* %load_count.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %load_count.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %load_count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store %struct._GfigObject* null, %struct._GfigObject** %obj, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @get_line(i8* %arraydecay, i32 256, %struct._IO_FILE* %1, i32 0)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %2)
  store i64 %call1, i64* %offset, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @gfig_skip_style(%struct._Style* %style, %struct._IO_FILE* %3)
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %load_buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call %struct._GfigObject* @d_load_object(i8* %arraydecay3, %struct._IO_FILE* %4)
  store %struct._GfigObject* %call4, %struct._GfigObject** %obj, align 8
  %5 = load %struct._GfigObject*, %struct._GfigObject** %obj, align 8
  %tobool = icmp ne %struct._GfigObject* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct._GFigObj*, %struct._GFigObj** %gfig.addr, align 8
  %7 = load %struct._GfigObject*, %struct._GfigObject** %obj, align 8
  call void @add_to_all_obj(%struct._GFigObj* %6, %struct._GfigObject* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %8)
  store i64 %call5, i64* %offset2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i64, i64* %offset, align 8
  %call6 = call i32 @fseek(%struct._IO_FILE* %9, i64 %10, i32 0)
  %11 = load %struct._GfigObject*, %struct._GfigObject** %obj, align 8
  %style7 = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %11, i32 0, i32 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @gfig_load_style(%struct._Style* %style7, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i64, i64* %offset2, align 8
  %call9 = call i32 @fseek(%struct._IO_FILE* %13, i64 %14, i32 0)
  br label %if.end

if.else:                                          ; preds = %while.body
  %15 = load i32, i32* %load_count.addr, align 4
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.59, i32 0, i32 0), i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @save_options(%struct._GString* %string) #0 {
entry:
  %string.addr = alloca %struct._GString*, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %1 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %6 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.7

if.else.3:                                        ; preds = %if.else
  %7 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else.3
  %8 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.else.6:                                        ; preds = %if.else.3
  %9 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then
  %10 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* %cond)
  %12 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 3), align 4
  %tobool9 = icmp ne i32 %13, 0
  %cond10 = select i1 %tobool9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* %cond10)
  %14 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 4), align 4
  %tobool11 = icmp ne i32 %15, 0
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* %cond12)
  %16 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 5), align 4
  %tobool13 = icmp ne i32 %17, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* %cond14)
  %18 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  ret void
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GString* @gfig_save_as_string() #0 {
entry:
  %objs = alloca %struct._GList*, align 8
  %count = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  %conv_buf = alloca [769 x i8], align 16
  %string = alloca %struct._GString*, align 8
  %object = alloca %struct._GfigObject*, align 8
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %string, align 8
  %arraydecay = getelementptr inbounds [769 x i8], [769 x i8]* %conv_buf, i32 0, i32 0
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %draw_name = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 2
  %2 = load i8*, i8** %draw_name, align 8
  call void @gfig_name_encode(i8* %arraydecay, i8* %2)
  %3 = load %struct._GString*, %struct._GString** %string, align 8
  %arraydecay1 = getelementptr inbounds [769 x i8], [769 x i8]* %conv_buf, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* %arraydecay1)
  %4 = load %struct._GString*, %struct._GString** %string, align 8
  %arraydecay2 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj3 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 4
  %6 = load %struct._GFigObj*, %struct._GFigObj** %current_obj3, align 8
  %version = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %6, i32 0, i32 3
  %7 = load float, float* %version, align 4
  %conv = fpext float %7 to double
  %call4 = call i8* @g_ascii_formatd(i8* %arraydecay2, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), double %conv)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* %call4)
  %8 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj5 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %8, i32 0, i32 4
  %9 = load %struct._GFigObj*, %struct._GFigObj** %current_obj5, align 8
  %obj_list = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %9, i32 0, i32 5
  %10 = load %struct._GList*, %struct._GList** %obj_list, align 8
  store %struct._GList* %10, %struct._GList** %objs, align 8
  %11 = load %struct._GList*, %struct._GList** %objs, align 8
  %call6 = call i32 @g_list_length(%struct._GList* %11)
  store i32 %call6, i32* %count, align 4
  %12 = load %struct._GString*, %struct._GString** %string, align 8
  %13 = load i32, i32* %count, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i32 %13)
  %14 = load %struct._GString*, %struct._GString** %string, align 8
  call void @save_options(%struct._GString* %14)
  %15 = load %struct._GString*, %struct._GString** %string, align 8
  call void @gfig_save_styles(%struct._GString* %15)
  %16 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj7 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %16, i32 0, i32 4
  %17 = load %struct._GFigObj*, %struct._GFigObj** %current_obj7, align 8
  %obj_list8 = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %17, i32 0, i32 5
  %18 = load %struct._GList*, %struct._GList** %obj_list8, align 8
  store %struct._GList* %18, %struct._GList** %objs, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %19 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool = icmp ne %struct._GList* %19, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %objs, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GfigObject*
  store %struct._GfigObject* %22, %struct._GfigObject** %object, align 8
  %23 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %24 = load %struct._GString*, %struct._GString** %string, align 8
  call void @gfig_save_obj_start(%struct._GfigObject* %23, %struct._GString* %24)
  %25 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %25, i32 0, i32 4
  %26 = load %struct._GString*, %struct._GString** %string, align 8
  call void @gfig_save_style(%struct._Style* %style, %struct._GString* %26)
  %27 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %points = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %27, i32 0, i32 3
  %28 = load %struct.DobjPoints*, %struct.DobjPoints** %points, align 8
  %tobool9 = icmp ne %struct.DobjPoints* %28, null
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %30 = load %struct._GString*, %struct._GString** %string, align 8
  call void @d_save_object(%struct._GfigObject* %29, %struct._GString* %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %31 = load %struct._GfigObject*, %struct._GfigObject** %object, align 8
  %32 = load %struct._GString*, %struct._GString** %string, align 8
  call void @gfig_save_obj_end(%struct._GfigObject* %31, %struct._GString* %32)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load %struct._GList*, %struct._GList** %objs, align 8
  %tobool10 = icmp ne %struct._GList* %33, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %objs, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %objs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GString*, %struct._GString** %string, align 8
  ret %struct._GString* %36
}

declare %struct._GString* @g_string_new(i8*) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

declare void @gfig_save_styles(%struct._GString*) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_save_obj_start(%struct._GfigObject* %obj, %struct._GString* %string) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %string.addr = alloca %struct._GString*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 1
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* %3)
  %4 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %style = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %4, i32 0, i32 4
  %5 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void @gfig_style_save_as_attributes(%struct._Style* %style, %struct._GString* %5)
  %6 = load %struct._GString*, %struct._GString** %string.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0))
  ret void
}

declare void @gfig_save_style(%struct._Style*, %struct._GString*) #1

declare void @d_save_object(%struct._GfigObject*, %struct._GString*) #1

; Function Attrs: nounwind uwtable
define internal void @gfig_save_obj_end(%struct._GfigObject* %obj, %struct._GString* %string) #0 {
entry:
  %obj.addr = alloca %struct._GfigObject*, align 8
  %string.addr = alloca %struct._GString*, align 8
  store %struct._GfigObject* %obj, %struct._GfigObject** %obj.addr, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %1 = load %struct._GfigObject*, %struct._GfigObject** %obj.addr, align 8
  %class = getelementptr inbounds %struct._GfigObject, %struct._GfigObject* %1, i32 0, i32 1
  %2 = load %struct.GfigObjectClass*, %struct.GfigObjectClass** %class, align 8
  %name = getelementptr inbounds %struct.GfigObjectClass, %struct.GfigObjectClass* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gfig_save_as_parasite() #0 {
entry:
  %retval = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %string = alloca %struct._GString*, align 8
  %call = call %struct._GString* @gfig_save_as_string()
  store %struct._GString* %call, %struct._GString** %string, align 8
  %0 = load %struct._GString*, %struct._GString** %string, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %conv = trunc i64 %1 to i32
  %2 = load %struct._GString*, %struct._GString** %string, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 0
  %3 = load i8*, i8** %str, align 8
  %call1 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 3, i32 %conv, i8* %3)
  store %struct._GimpParasite* %call1, %struct._GimpParasite** %parasite, align 8
  %4 = load %struct._GString*, %struct._GString** %string, align 8
  %call2 = call i8* @g_string_free(%struct._GString* %4, i32 1)
  %5 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %5, i32 0, i32 3
  %6 = load i32, i32* %drawable_id, align 4
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call3 = call i32 @gimp_item_attach_parasite(i32 %6, %struct._GimpParasite* %7)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i32 0, i32 0)) #6
  call void (i8*, ...) @g_message(i8* %call4)
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %9)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @gimp_item_attach_parasite(i32, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define %struct._GFigObj* @gfig_load_from_parasite() #0 {
entry:
  %retval = alloca %struct._GFigObj*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fname = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %gfig = alloca %struct._GFigObj*, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %drawable_id = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 3
  %1 = load i32, i32* %drawable_id, align 4
  %call = call %struct._GimpParasite* @gimp_item_get_parasite(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @gimp_temp_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  store i8* %call1, i8** %fname, align 8
  %3 = load i8*, i8** %fname, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i32 0, i32 0)) #6
  %5 = load i8*, i8** %fname, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call7 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call7, align 4
  %call8 = call i8* @g_strerror(i32 %6) #7
  call void (i8*, ...) @g_message(i8* %call5, i8* %call6, i8* %call8)
  store %struct._GFigObj* null, %struct._GFigObj** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call10 = call i8* @gimp_parasite_data(%struct._GimpParasite* %7)
  %8 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call11 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @fwrite(i8* %call10, i64 1, i64 %call11, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %10)
  %11 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %11)
  %12 = load i8*, i8** %fname, align 8
  %call14 = call %struct._GFigObj* @gfig_load(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GFigObj* %call14, %struct._GFigObj** %gfig, align 8
  %13 = load i8*, i8** %fname, align 8
  %call15 = call i32 @g_unlink(i8* %13)
  %14 = load i8*, i8** %fname, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GFigObj*, %struct._GFigObj** %gfig, align 8
  store %struct._GFigObj* %15, %struct._GFigObj** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.4, %if.then
  %16 = load %struct._GFigObj*, %struct._GFigObj** %retval
  ret %struct._GFigObj* %16
}

declare %struct._GimpParasite* @gimp_item_get_parasite(i32, i8*) #1

declare i8* @gimp_temp_name(i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare i32 @g_unlink(i8*) #1

; Function Attrs: nounwind uwtable
define void @gfig_save_callbk() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %savename = alloca i8*, align 8
  %string = alloca %struct._GString*, align 8
  %0 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %0, i32 0, i32 4
  %1 = load %struct._GFigObj*, %struct._GFigObj** %current_obj, align 8
  %filename = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %1, i32 0, i32 1
  %2 = load i8*, i8** %filename, align 8
  store i8* %2, i8** %savename, align 8
  %3 = load i8*, i8** %savename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0)) #6
  %5 = load i8*, i8** %savename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %5)
  %call3 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %6) #7
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call %struct._GString* @gfig_save_as_string()
  store %struct._GString* %call5, %struct._GString** %string, align 8
  %7 = load %struct._GString*, %struct._GString** %string, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %9 = load %struct._GString*, %struct._GString** %string, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i64 @fwrite(i8* %8, i64 %10, i64 1, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 @ferror(%struct._IO_FILE* %12) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %13 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %current_obj10 = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %13, i32 0, i32 4
  %14 = load %struct._GFigObj*, %struct._GFigObj** %current_obj10, align 8
  %obj_status = getelementptr inbounds %struct._GFigObj, %struct._GFigObj* %14, i32 0, i32 6
  %15 = load i32, i32* %obj_status, align 4
  %and = and i32 %15, -4
  store i32 %and, i32* %obj_status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #5

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_context_push() #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_selection_none(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #5

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gfig_init_object_classes() #1

declare i32 @gfig_dialog() #1

declare i32 @gimp_image_undo_group_end(i32) #1

declare i32 @gimp_context_pop() #1

declare i32 @gimp_displays_flush() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @gfig_skip_style(%struct._Style*, %struct._IO_FILE*) #1

declare %struct._GfigObject* @d_load_object(i8*, %struct._IO_FILE*) #1

declare void @add_to_all_obj(%struct._GFigObj*, %struct._GfigObject*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @gfig_load_style(%struct._Style*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @load_bool(i8* %opt_buf, i32* %toset) #0 {
entry:
  %retval = alloca i32, align 4
  %opt_buf.addr = alloca i8*, align 8
  %toset.addr = alloca i32*, align 8
  store i8* %opt_buf, i8** %opt_buf.addr, align 8
  store i32* %toset, i32** %toset.addr, align 8
  %0 = load i8*, i8** %opt_buf.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %toset.addr, align 8
  store i32 1, i32* %1, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %opt_buf.addr, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %3 = load i32*, i32** %toset.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.else.4
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @gfig_style_save_as_attributes(%struct._Style*, %struct._GString*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
