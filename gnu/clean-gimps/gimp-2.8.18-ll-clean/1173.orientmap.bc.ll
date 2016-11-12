; ModuleID = './plug-ins/gimpressionist/orientmap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { double, double, double, double, double, double, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.smvector = type { double, double, double, double }
%struct.ppm = type { i32, i32, i8* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }

@num_vectors = internal global i32 0, align 4
@vector = internal global [50 x %struct.vector] zeroinitializer, align 16
@angle_offset_adjust = internal global %struct._GtkAdjustment* null, align 8
@orient_map_str_exp_adjust = internal global %struct._GtkAdjustment* null, align 8
@orient_voronoi = internal global %struct._GtkWidget* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@update_om_preview_nbuffer = internal global %struct.ppm zeroinitializer, align 8
@update_vector_preview_backup = internal global %struct.ppm zeroinitializer, align 8
@update_vector_preview_buffer = internal global %struct.ppm zeroinitializer, align 8
@orient_map_window = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Orientation Map Editor\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gimp-gimpressionist\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"plug-in-gimpressionist\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Vectors\00", align 1
@.str.9 = private unnamed_addr constant [127 x i8] c"The vector-field. Left-click to move selected vector, Right-click to point it towards mouse, Middle-click to add a new vector.\00", align 1
@vector_preview = internal global %struct._GtkWidget* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@vector_preview_brightness_adjust = internal global %struct._GtkAdjustment* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Adjust the preview's brightness\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@orient_map_preview_prev = internal global %struct._GtkWidget* null, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"_<<\00", align 1
@prev_button = internal global %struct._GtkWidget* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Select previous vector\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"_>>\00", align 1
@next_button = internal global %struct._GtkWidget* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"Select next vector\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"A_dd\00", align 1
@add_button = internal global %struct._GtkWidget* null, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"Add new vector\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"_Kill\00", align 1
@kill_button = internal global %struct._GtkWidget* null, align 8
@.str.22 = private unnamed_addr constant [23 x i8] c"Delete selected vector\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@vector_type = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"_Normal\00", align 1
@vector_types = internal global [4 x %struct._GtkWidget*] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [8 x i8] c"Vorte_x\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Vortex_2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Vortex_3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"_Voronoi\00", align 1
@.str.29 = private unnamed_addr constant [81 x i8] c"Voronoi-mode makes only the vector closest to the given point have any influence\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"A_ngle:\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"Change the angle of the selected vector\00", align 1
@angle_adjust = internal global %struct._GtkAdjustment* null, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"Ang_le offset:\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Offset all vectors with a given angle\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"_Strength:\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Change the strength of the selected vector\00", align 1
@strength_adjust = internal global %struct._GtkAdjustment* null, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"S_trength exp.:\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Change the exponent of the strength\00", align 1
@selectedvector = internal global i32 0, align 4
@update_vector_prev.ok = internal global i32 0, align 4
@update_vector_prev.last_val = internal global double 0.000000e+00, align 8
@update_vector_prev.gray = private unnamed_addr constant [3 x i8] c"xxx", align 1
@update_vector_prev.red = private unnamed_addr constant [3 x i8] c"\FF\00\00", align 1
@update_vector_prev.white = private unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@update_orient_map_preview_prev.gray = private unnamed_addr constant [3 x i8] c"xxx", align 1
@update_orient_map_preview_prev.white = private unnamed_addr constant [3 x i8] c"\FF\FF\FF", align 1
@adjignore = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define double @get_direction(double %x, double %y, i32 %from) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %from.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %voronoi = alloca i32, align 4
  %sum = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dst = alloca double, align 8
  %vec = alloca %struct.vector*, align 8
  %angoff = alloca double, align 8
  %strexp = alloca double, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %bestdist = alloca double, align 8
  %s = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %a = alloca double, align 8
  %a65 = alloca double, align 8
  %a93 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 0, i32* %first, align 4
  %0 = load i32, i32* %from.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @num_vectors, align 4
  store i32 %1, i32* %n, align 4
  store %struct.vector* getelementptr inbounds ([50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i32 0), %struct.vector** %vec, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_offset_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  store double %call, double* %angoff, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @orient_map_str_exp_adjust, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  store double %call1, double* %strexp, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_voronoi, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %call4 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %6)
  store i32 %call4, i32* %voronoi, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  store i32 %7, i32* %n, align 4
  store %struct.vector* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19, i32 0), %struct.vector** %vec, align 8
  %8 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 23), align 8
  store double %8, double* %angoff, align 8
  %9 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 24), align 8
  store double %9, double* %strexp, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  store i32 %10, i32* %voronoi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %voronoi, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.5, label %if.else.16

if.then.5:                                        ; preds = %if.end
  store double -1.000000e+00, double* %bestdist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx = getelementptr inbounds %struct.vector, %struct.vector* %17, i64 %idxprom
  %x7 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 0
  %18 = load double, double* %x7, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx9 = getelementptr inbounds %struct.vector, %struct.vector* %20, i64 %idxprom8
  %y10 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx9, i32 0, i32 1
  %21 = load double, double* %y10, align 8
  %call11 = call double @dist(double %14, double %15, double %18, double %21)
  store double %call11, double* %dst, align 8
  %22 = load double, double* %bestdist, align 8
  %cmp12 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %23 = load double, double* %dst, align 8
  %24 = load double, double* %bestdist, align 8
  %cmp13 = fcmp olt double %23, %24
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %25 = load double, double* %dst, align 8
  store double %25, double* %bestdist, align 8
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %first, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %first, align 4
  %add = add nsw i32 %28, 1
  store i32 %add, i32* %last, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.end
  store i32 0, i32* %first, align 4
  %29 = load i32, i32* %n, align 4
  store i32 %29, i32* %last, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %for.end
  store double 0.000000e+00, double* %dy, align 8
  store double 0.000000e+00, double* %dx, align 8
  store double 0.000000e+00, double* %sum, align 8
  %30 = load i32, i32* %first, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.135, %if.end.17
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %last, align 4
  %cmp19 = icmp slt i32 %31, %32
  br i1 %cmp19, label %for.body.20, label %for.end.137

for.body.20:                                      ; preds = %for.cond.18
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx22 = getelementptr inbounds %struct.vector, %struct.vector* %34, i64 %idxprom21
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx22, i32 0, i32 5
  %35 = load double, double* %str, align 8
  store double %35, double* %s, align 8
  store double 0.000000e+00, double* %tx, align 8
  store double 0.000000e+00, double* %ty, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx24 = getelementptr inbounds %struct.vector, %struct.vector* %37, i64 %idxprom23
  %type = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx24, i32 0, i32 6
  %38 = load i32, i32* %type, align 4
  %cmp25 = icmp eq i32 %38, 0
  br i1 %cmp25, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %for.body.20
  %39 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx28 = getelementptr inbounds %struct.vector, %struct.vector* %40, i64 %idxprom27
  %dx29 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx28, i32 0, i32 3
  %41 = load double, double* %dx29, align 8
  store double %41, double* %tx, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %42 to i64
  %43 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx31 = getelementptr inbounds %struct.vector, %struct.vector* %43, i64 %idxprom30
  %dy32 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx31, i32 0, i32 4
  %44 = load double, double* %dy32, align 8
  store double %44, double* %ty, align 8
  br label %if.end.118

if.else.33:                                       ; preds = %for.body.20
  %45 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx35 = getelementptr inbounds %struct.vector, %struct.vector* %46, i64 %idxprom34
  %type36 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx35, i32 0, i32 6
  %47 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %47, 1
  br i1 %cmp37, label %if.then.38, label %if.else.59

if.then.38:                                       ; preds = %if.else.33
  %48 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %48 to i64
  %49 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx40 = getelementptr inbounds %struct.vector, %struct.vector* %49, i64 %idxprom39
  %dy41 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx40, i32 0, i32 4
  %50 = load double, double* %dy41, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %51 to i64
  %52 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx43 = getelementptr inbounds %struct.vector, %struct.vector* %52, i64 %idxprom42
  %dx44 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx43, i32 0, i32 3
  %53 = load double, double* %dx44, align 8
  %call45 = call double @atan2(double %50, double %53) #4
  store double %call45, double* %a, align 8
  %54 = load double, double* %y.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx47 = getelementptr inbounds %struct.vector, %struct.vector* %56, i64 %idxprom46
  %y48 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx47, i32 0, i32 1
  %57 = load double, double* %y48, align 8
  %sub = fsub double %54, %57
  %58 = load double, double* %x.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %59 to i64
  %60 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx50 = getelementptr inbounds %struct.vector, %struct.vector* %60, i64 %idxprom49
  %x51 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx50, i32 0, i32 0
  %61 = load double, double* %x51, align 8
  %sub52 = fsub double %58, %61
  %call53 = call double @atan2(double %sub, double %sub52) #4
  %62 = load double, double* %a, align 8
  %sub54 = fsub double %62, %call53
  store double %sub54, double* %a, align 8
  %63 = load double, double* %a, align 8
  %add55 = fadd double %63, 0x3FF921FB54442D18
  %call56 = call double @sin(double %add55) #4
  store double %call56, double* %tx, align 8
  %64 = load double, double* %a, align 8
  %add57 = fadd double %64, 0x3FF921FB54442D18
  %call58 = call double @cos(double %add57) #4
  store double %call58, double* %ty, align 8
  br label %if.end.117

if.else.59:                                       ; preds = %if.else.33
  %65 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %65 to i64
  %66 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx61 = getelementptr inbounds %struct.vector, %struct.vector* %66, i64 %idxprom60
  %type62 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx61, i32 0, i32 6
  %67 = load i32, i32* %type62, align 4
  %cmp63 = icmp eq i32 %67, 2
  br i1 %cmp63, label %if.then.64, label %if.else.87

if.then.64:                                       ; preds = %if.else.59
  %68 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx67 = getelementptr inbounds %struct.vector, %struct.vector* %69, i64 %idxprom66
  %dy68 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx67, i32 0, i32 4
  %70 = load double, double* %dy68, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %71 to i64
  %72 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx70 = getelementptr inbounds %struct.vector, %struct.vector* %72, i64 %idxprom69
  %dx71 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx70, i32 0, i32 3
  %73 = load double, double* %dx71, align 8
  %call72 = call double @atan2(double %70, double %73) #4
  store double %call72, double* %a65, align 8
  %74 = load double, double* %y.addr, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx74 = getelementptr inbounds %struct.vector, %struct.vector* %76, i64 %idxprom73
  %y75 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx74, i32 0, i32 1
  %77 = load double, double* %y75, align 8
  %sub76 = fsub double %74, %77
  %78 = load double, double* %x.addr, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %79 to i64
  %80 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx78 = getelementptr inbounds %struct.vector, %struct.vector* %80, i64 %idxprom77
  %x79 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx78, i32 0, i32 0
  %81 = load double, double* %x79, align 8
  %sub80 = fsub double %78, %81
  %call81 = call double @atan2(double %sub76, double %sub80) #4
  %82 = load double, double* %a65, align 8
  %add82 = fadd double %82, %call81
  store double %add82, double* %a65, align 8
  %83 = load double, double* %a65, align 8
  %add83 = fadd double %83, 0x3FF921FB54442D18
  %call84 = call double @sin(double %add83) #4
  store double %call84, double* %tx, align 8
  %84 = load double, double* %a65, align 8
  %add85 = fadd double %84, 0x3FF921FB54442D18
  %call86 = call double @cos(double %add85) #4
  store double %call86, double* %ty, align 8
  br label %if.end.116

if.else.87:                                       ; preds = %if.else.59
  %85 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %85 to i64
  %86 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx89 = getelementptr inbounds %struct.vector, %struct.vector* %86, i64 %idxprom88
  %type90 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx89, i32 0, i32 6
  %87 = load i32, i32* %type90, align 4
  %cmp91 = icmp eq i32 %87, 3
  br i1 %cmp91, label %if.then.92, label %if.end.115

if.then.92:                                       ; preds = %if.else.87
  %88 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %88 to i64
  %89 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx95 = getelementptr inbounds %struct.vector, %struct.vector* %89, i64 %idxprom94
  %dy96 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx95, i32 0, i32 4
  %90 = load double, double* %dy96, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %91 to i64
  %92 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx98 = getelementptr inbounds %struct.vector, %struct.vector* %92, i64 %idxprom97
  %dx99 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx98, i32 0, i32 3
  %93 = load double, double* %dx99, align 8
  %call100 = call double @atan2(double %90, double %93) #4
  store double %call100, double* %a93, align 8
  %94 = load double, double* %y.addr, align 8
  %95 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %95 to i64
  %96 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx102 = getelementptr inbounds %struct.vector, %struct.vector* %96, i64 %idxprom101
  %y103 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx102, i32 0, i32 1
  %97 = load double, double* %y103, align 8
  %sub104 = fsub double %94, %97
  %98 = load double, double* %x.addr, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %99 to i64
  %100 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx106 = getelementptr inbounds %struct.vector, %struct.vector* %100, i64 %idxprom105
  %x107 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx106, i32 0, i32 0
  %101 = load double, double* %x107, align 8
  %sub108 = fsub double %98, %101
  %call109 = call double @atan2(double %sub104, double %sub108) #4
  %mul = fmul double %call109, 2.000000e+00
  %102 = load double, double* %a93, align 8
  %sub110 = fsub double %102, %mul
  store double %sub110, double* %a93, align 8
  %103 = load double, double* %a93, align 8
  %add111 = fadd double %103, 0x3FF921FB54442D18
  %call112 = call double @sin(double %add111) #4
  store double %call112, double* %tx, align 8
  %104 = load double, double* %a93, align 8
  %add113 = fadd double %104, 0x3FF921FB54442D18
  %call114 = call double @cos(double %add113) #4
  store double %call114, double* %ty, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.92, %if.else.87
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.64
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.38
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.26
  %105 = load double, double* %x.addr, align 8
  %106 = load double, double* %y.addr, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %107 to i64
  %108 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx120 = getelementptr inbounds %struct.vector, %struct.vector* %108, i64 %idxprom119
  %x121 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx120, i32 0, i32 0
  %109 = load double, double* %x121, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %110 to i64
  %111 = load %struct.vector*, %struct.vector** %vec, align 8
  %arrayidx123 = getelementptr inbounds %struct.vector, %struct.vector* %111, i64 %idxprom122
  %y124 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx123, i32 0, i32 1
  %112 = load double, double* %y124, align 8
  %call125 = call double @dist(double %105, double %106, double %109, double %112)
  store double %call125, double* %dst, align 8
  %113 = load double, double* %dst, align 8
  %114 = load double, double* %strexp, align 8
  %call126 = call double @pow(double %113, double %114) #4
  store double %call126, double* %dst, align 8
  %115 = load double, double* %dst, align 8
  %cmp127 = fcmp olt double %115, 1.000000e-04
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.118
  store double 1.000000e-04, double* %dst, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.118
  %116 = load double, double* %s, align 8
  %117 = load double, double* %dst, align 8
  %div = fdiv double %116, %117
  store double %div, double* %s, align 8
  %118 = load double, double* %tx, align 8
  %119 = load double, double* %s, align 8
  %mul130 = fmul double %118, %119
  %120 = load double, double* %dx, align 8
  %add131 = fadd double %120, %mul130
  store double %add131, double* %dx, align 8
  %121 = load double, double* %ty, align 8
  %122 = load double, double* %s, align 8
  %mul132 = fmul double %121, %122
  %123 = load double, double* %dy, align 8
  %add133 = fadd double %123, %mul132
  store double %add133, double* %dy, align 8
  %124 = load double, double* %s, align 8
  %125 = load double, double* %sum, align 8
  %add134 = fadd double %125, %124
  store double %add134, double* %sum, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.129
  %126 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %126, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond.18

for.end.137:                                      ; preds = %for.cond.18
  %127 = load double, double* %dx, align 8
  %128 = load double, double* %sum, align 8
  %div138 = fdiv double %127, %128
  store double %div138, double* %dx, align 8
  %129 = load double, double* %dy, align 8
  %130 = load double, double* %sum, align 8
  %div139 = fdiv double %129, %130
  store double %div139, double* %dy, align 8
  %131 = load double, double* %dy, align 8
  %132 = load double, double* %dx, align 8
  %call140 = call double @atan2(double %131, double %132) #4
  %mul141 = fmul double %call140, 3.600000e+02
  %div142 = fdiv double %mul141, 0x401921FB54442D18
  %133 = load double, double* %angoff, align 8
  %add143 = fadd double %div142, %133
  %sub144 = fsub double 9.000000e+01, %add143
  ret double %sub144
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare double @dist(double, double, double, double) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define void @orientation_map_free_resources() #0 {
entry:
  call void @ppm_kill(%struct.ppm* @update_om_preview_nbuffer)
  call void @ppm_kill(%struct.ppm* @update_vector_preview_backup)
  call void @ppm_kill(%struct.ppm* @update_vector_preview_buffer)
  ret void
}

declare void @ppm_kill(%struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @update_orientmap_dialog() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @init_vectors()
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @orient_map_str_exp_adjust, align 8
  %2 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 24), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %1, double %2)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_offset_adjust, align 8
  %4 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 23), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_voronoi, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %8 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %7, i32 %8)
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_vectors() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  store i32 %1, i32* @num_vectors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @num_vectors, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom1
  %6 = bitcast %struct.vector* %arrayidx to i8*
  %7 = bitcast %struct.vector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @num_vectors, align 4
  call void @add_new_vector(double 5.000000e-01, double 5.000000e-01)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* @selectedvector, align 4
  %10 = load i32, i32* @num_vectors, align 4
  %cmp3 = icmp sge i32 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32, i32* @num_vectors, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* @selectedvector, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @update_vector_prev() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dir = alloca double, align 8
  %xo = alloca double, align 8
  %yo = alloca double, align 8
  %val = alloca double, align 8
  %gray = alloca [3 x i8], align 1
  %red = alloca [3 x i8], align 1
  %white = alloca [3 x i8], align 1
  %s = alloca double, align 8
  %0 = bitcast [3 x i8]* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_vector_prev.gray, i32 0, i32 0), i64 3, i32 1, i1 false)
  %1 = bitcast [3 x i8]* %red to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_vector_prev.red, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = bitcast [3 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_vector_prev.white, i32 0, i32 0), i64 3, i32 1, i1 false)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @vector_preview_brightness_adjust, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @vector_preview_brightness_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %div = fdiv double %call, 1.000000e+02
  %sub = fsub double 1.000000e+00, %div
  store double %sub, double* %val, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 5.000000e-01, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @update_vector_prev.ok, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.2

lor.lhs.false:                                    ; preds = %if.end
  %6 = load double, double* %val, align 8
  %7 = load double, double* @update_vector_prev.last_val, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  call void @infile_copy_to_ppm(%struct.ppm* @update_vector_preview_backup)
  %8 = load double, double* %val, align 8
  %conv = fptrunc double %8 to float
  call void @ppm_apply_brightness(%struct.ppm* @update_vector_preview_backup, float %conv, i32 1, i32 1, i32 1)
  %9 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_backup, i32 0, i32 0), align 4
  %cmp3 = icmp ne i32 %9, 150
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.then.2
  %10 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_backup, i32 0, i32 1), align 4
  %cmp6 = icmp ne i32 %10, 150
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.then.2
  call void @resize_fast(%struct.ppm* @update_vector_preview_backup, i32 150, i32 150)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false.5
  store i32 1, i32* @update_vector_prev.ok, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %lor.lhs.false
  call void @ppm_copy(%struct.ppm* @update_vector_preview_backup, %struct.ppm* @update_vector_preview_buffer)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @num_vectors, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %x13 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 0
  %14 = load double, double* %x13, align 8
  %mul = fmul double %14, 1.500000e+02
  %conv14 = fptosi double %mul to i32
  store i32 %conv14, i32* %x, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom15
  %y17 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx16, i32 0, i32 1
  %16 = load double, double* %y17, align 8
  %mul18 = fmul double %16, 1.500000e+02
  %conv19 = fptosi double %mul18 to i32
  store i32 %conv19, i32* %y, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom20
  %dir22 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx21, i32 0, i32 2
  %18 = load double, double* %dir22, align 8
  %mul23 = fmul double %18, 0x401921FB54442D18
  %div24 = fdiv double %mul23, 3.600000e+02
  store double %div24, double* %dir, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom25
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx26, i32 0, i32 5
  %20 = load double, double* %str, align 8
  %mul27 = fmul double %20, 0x401921FB54442D18
  %div28 = fdiv double %mul27, 3.600000e+02
  store double %div28, double* %s, align 8
  %21 = load double, double* %dir, align 8
  %call29 = call double @sin(double %21) #4
  %22 = load double, double* %s, align 8
  %mul30 = fmul double 1.000000e+02, %22
  %add = fadd double 6.000000e+00, %mul30
  %mul31 = fmul double %call29, %add
  store double %mul31, double* %xo, align 8
  %23 = load double, double* %dir, align 8
  %call32 = call double @cos(double %23) #4
  %24 = load double, double* %s, align 8
  %mul33 = fmul double 1.000000e+02, %24
  %add34 = fadd double 6.000000e+00, %mul33
  %mul35 = fmul double %call32, %add34
  store double %mul35, double* %yo, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @selectedvector, align 4
  %cmp36 = icmp eq i32 %25, %26
  br i1 %cmp36, label %if.then.38, label %if.else.51

if.then.38:                                       ; preds = %for.body
  %27 = load i32, i32* %x, align 4
  %conv39 = sitofp i32 %27 to double
  %28 = load double, double* %xo, align 8
  %sub40 = fsub double %conv39, %28
  %conv41 = fptrunc double %sub40 to float
  %29 = load i32, i32* %y, align 4
  %conv42 = sitofp i32 %29 to double
  %30 = load double, double* %yo, align 8
  %sub43 = fsub double %conv42, %30
  %conv44 = fptrunc double %sub43 to float
  %31 = load i32, i32* %x, align 4
  %conv45 = sitofp i32 %31 to double
  %32 = load double, double* %xo, align 8
  %add46 = fadd double %conv45, %32
  %conv47 = fptrunc double %add46 to float
  %33 = load i32, i32* %y, align 4
  %conv48 = sitofp i32 %33 to double
  %34 = load double, double* %yo, align 8
  %add49 = fadd double %conv48, %34
  %conv50 = fptrunc double %add49 to float
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %red, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_buffer, float %conv41, float %conv44, float %conv47, float %conv50, i8* %arraydecay)
  br label %if.end.65

if.else.51:                                       ; preds = %for.body
  %35 = load i32, i32* %x, align 4
  %conv52 = sitofp i32 %35 to double
  %36 = load double, double* %xo, align 8
  %sub53 = fsub double %conv52, %36
  %conv54 = fptrunc double %sub53 to float
  %37 = load i32, i32* %y, align 4
  %conv55 = sitofp i32 %37 to double
  %38 = load double, double* %yo, align 8
  %sub56 = fsub double %conv55, %38
  %conv57 = fptrunc double %sub56 to float
  %39 = load i32, i32* %x, align 4
  %conv58 = sitofp i32 %39 to double
  %40 = load double, double* %xo, align 8
  %add59 = fadd double %conv58, %40
  %conv60 = fptrunc double %add59 to float
  %41 = load i32, i32* %y, align 4
  %conv61 = sitofp i32 %41 to double
  %42 = load double, double* %yo, align 8
  %add62 = fadd double %conv61, %42
  %conv63 = fptrunc double %add62 to float
  %arraydecay64 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_vector_preview_buffer, float %conv54, float %conv57, float %conv60, float %conv63, i8* %arraydecay64)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.51, %if.then.38
  %43 = load i32, i32* %x, align 4
  %conv66 = sitofp i32 %43 to double
  %44 = load double, double* %xo, align 8
  %sub67 = fsub double %conv66, %44
  %conv68 = fptrunc double %sub67 to float
  %45 = load i32, i32* %y, align 4
  %conv69 = sitofp i32 %45 to double
  %46 = load double, double* %yo, align 8
  %sub70 = fsub double %conv69, %46
  %conv71 = fptrunc double %sub70 to float
  %arraydecay72 = getelementptr inbounds [3 x i8], [3 x i8]* %white, i32 0, i32 0
  call void @ppm_put_rgb(%struct.ppm* @update_vector_preview_buffer, float %conv68, float %conv71, i8* %arraydecay72)
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** @vector_preview, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_preview_area_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call73)
  %50 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpPreviewArea*
  %51 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @update_vector_preview_buffer, i32 0, i32 2), align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %50, i32 0, i32 0, i32 150, i32 150, i32 0, i8* %51, i32 450)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_orient_map_preview_prev() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %black = alloca [3 x i8], align 1
  %gray = alloca [3 x i8], align 1
  %white = alloca [3 x i8], align 1
  %dir = alloca double, align 8
  %xo = alloca double, align 8
  %yo = alloca double, align 8
  %0 = bitcast [3 x i8]* %black to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 3, i32 1, i1 false)
  %1 = bitcast [3 x i8]* %gray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_orient_map_preview_prev.gray, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = bitcast [3 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_orient_map_preview_prev.white, i32 0, i32 0), i64 3, i32 1, i1 false)
  %3 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @update_om_preview_nbuffer, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ppm_new(%struct.ppm* @update_om_preview_nbuffer, i32 150, i32 150)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %black, i32 0, i32 0
  call void @fill(%struct.ppm* @update_om_preview_nbuffer, i8* %arraydecay)
  store i32 6, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.end
  %4 = load i32, i32* %y, align 4
  %cmp1 = icmp slt i32 %4, 146
  br i1 %cmp1, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 6, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %5, 146
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %x, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 1.500000e+02
  %7 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %7 to double
  %div6 = fdiv double %conv5, 1.500000e+02
  %call = call double @get_direction(double %div, double %div6, i32 0)
  %mul = fmul double %call, 0x401921FB54442D18
  %div7 = fdiv double %mul, 3.600000e+02
  store double %div7, double* %dir, align 8
  %8 = load double, double* %dir, align 8
  %call8 = call double @sin(double %8) #4
  %mul9 = fmul double %call8, 4.000000e+00
  store double %mul9, double* %xo, align 8
  %9 = load double, double* %dir, align 8
  %call10 = call double @cos(double %9) #4
  %mul11 = fmul double %call10, 4.000000e+00
  store double %mul11, double* %yo, align 8
  %10 = load i32, i32* %x, align 4
  %conv12 = sitofp i32 %10 to double
  %11 = load double, double* %xo, align 8
  %sub = fsub double %conv12, %11
  %conv13 = fptrunc double %sub to float
  %12 = load i32, i32* %y, align 4
  %conv14 = sitofp i32 %12 to double
  %13 = load double, double* %yo, align 8
  %sub15 = fsub double %conv14, %13
  %conv16 = fptrunc double %sub15 to float
  %14 = load i32, i32* %x, align 4
  %conv17 = sitofp i32 %14 to double
  %15 = load double, double* %xo, align 8
  %add = fadd double %conv17, %15
  %conv18 = fptrunc double %add to float
  %16 = load i32, i32* %y, align 4
  %conv19 = sitofp i32 %16 to double
  %17 = load double, double* %yo, align 8
  %add20 = fadd double %conv19, %17
  %conv21 = fptrunc double %add20 to float
  %arraydecay22 = getelementptr inbounds [3 x i8], [3 x i8]* %gray, i32 0, i32 0
  call void @ppm_drawline(%struct.ppm* @update_om_preview_nbuffer, float %conv13, float %conv16, float %conv18, float %conv21, i8* %arraydecay22)
  %18 = load i32, i32* %x, align 4
  %conv23 = sitofp i32 %18 to double
  %19 = load double, double* %xo, align 8
  %sub24 = fsub double %conv23, %19
  %conv25 = fptrunc double %sub24 to float
  %20 = load i32, i32* %y, align 4
  %conv26 = sitofp i32 %20 to double
  %21 = load double, double* %yo, align 8
  %sub27 = fsub double %conv26, %21
  %conv28 = fptrunc double %sub27 to float
  %arraydecay29 = getelementptr inbounds [3 x i8], [3 x i8]* %white, i32 0, i32 0
  call void @ppm_put_rgb(%struct.ppm* @update_om_preview_nbuffer, float %conv25, float %conv28, i8* %arraydecay29)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %22 = load i32, i32* %x, align 4
  %add30 = add nsw i32 %22, 10
  store i32 %add30, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %23 = load i32, i32* %y, align 4
  %add32 = add nsw i32 %23, 10
  store i32 %add32, i32* %y, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_preview_prev, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_preview_area_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call34)
  %26 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpPreviewArea*
  %27 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @update_om_preview_nbuffer, i32 0, i32 2), align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %26, i32 0, i32 0, i32 150, i32 150, i32 0, i8* %27, i32 450)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_preview_prev, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** @prev_button, align 8
  %30 = load i32, i32* @num_vectors, align 4
  %cmp36 = icmp sgt i32 %30, 1
  %conv37 = zext i1 %cmp36 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %29, i32 %conv37)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @next_button, align 8
  %32 = load i32, i32* @num_vectors, align 4
  %cmp38 = icmp sgt i32 %32, 1
  %conv39 = zext i1 %cmp38 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 %conv39)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @add_button, align 8
  %34 = load i32, i32* @num_vectors, align 4
  %cmp40 = icmp slt i32 %34, 50
  %conv41 = zext i1 %cmp40 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %33, i32 %conv41)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** @kill_button, align 8
  %36 = load i32, i32* @num_vectors, align 4
  %cmp42 = icmp sgt i32 %36, 1
  %conv43 = zext i1 %cmp42 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %35, i32 %conv43)
  ret void
}

; Function Attrs: nounwind uwtable
define void @create_orientmap_dialog(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %tmpw2 = alloca %struct._GtkWidget*, align 8
  %table1 = alloca %struct._GtkWidget*, align 8
  %table2 = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %ebox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  call void @init_vectors()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %1)
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %call1, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** @orient_map_window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -10, i32 -6, i32 -1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @orient_map_response to void ()*), i8* %9, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @orient_map_window to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call7 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 5, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %table1, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 6)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #4
  %call16 = call %struct._GtkWidget* @gtk_frame_new(i8* %call15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %24, i32 2)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %27, %struct._GtkWidget* %28, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %hbox, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call22)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %32, %struct._GtkWidget* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call24 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %ebox, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.9, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %35, i8* %call25, i8* null)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %call28 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call28, %struct._GtkWidget** @vector_preview, align 8
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %tmpw, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %40, i32 150, i32 150)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call29)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %46, i32 256)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkEventButton*)* @map_click_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %ebox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call32 = call %struct._GtkObject* @gtk_adjustment_new(double 5.000000e+01, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %50 = bitcast %struct._GtkObject* %call32 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %50, %struct._GtkAdjustment** @vector_preview_brightness_adjust, align 8
  %51 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @vector_preview_brightness_adjust, align 8
  %call33 = call %struct._GtkWidget* @gtk_scale_new(i32 1, %struct._GtkAdjustment* %51)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %tmpw, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_scale_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %54, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call36)
  %57 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @vector_preview_brightness_adjust, align 8
  %61 = bitcast %struct._GtkAdjustment* %60 to i8*
  %call38 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* @update_vector_prev, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %62, i8* %call39, i8* null)
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #4
  %call41 = call %struct._GtkWidget* @gtk_frame_new(i8* %call40)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %tmpw2, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call42)
  %65 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %65, i32 2)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call44)
  %68 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_table_attach(%struct._GtkTable* %68, %struct._GtkWidget* %69, i32 1, i32 2, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %call46 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call46, %struct._GtkWidget** @orient_map_preview_prev, align 8
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %tmpw, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %71, i32 150, i32 150)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw2, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_container_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call47)
  %74 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkContainer*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_container_add(%struct._GtkContainer* %74, %struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call49 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %hbox, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call50)
  %79 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %79, i32 1)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_container_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %82, i32 2)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call54)
  %85 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %85, %struct._GtkWidget* %86, i32 0, i32 1, i32 1, i32 2)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %call56 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call56, %struct._GtkWidget** @prev_button, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 1, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %94 = bitcast %struct._GtkWidget* %93 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @prev_click_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %95, i8* %call60, i8* null)
  %call61 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call61, %struct._GtkWidget** @next_button, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_box_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call62)
  %98 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkBox*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %99, i32 0, i32 1, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %102 = bitcast %struct._GtkWidget* %101 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @next_click_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %103, i8* %call65, i8* null)
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #4
  %call67 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call66)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call67, %struct._GtkWidget** @add_button, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call68)
  %106 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %107, i32 0, i32 1, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %110 = bitcast %struct._GtkWidget* %109 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @add_click_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %111, i8* %call71, i8* null)
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #4
  %call73 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call72)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call73, %struct._GtkWidget** @kill_button, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call74)
  %114 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %114, %struct._GtkWidget* %115, i32 0, i32 1, i32 0)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %118 = bitcast %struct._GtkWidget* %117 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @delete_click_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %119, i8* %call77, i8* null)
  %call78 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %hbox, align 8
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call79)
  %122 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %122, i32 12)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %table1, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call81)
  %125 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %125, %struct._GtkWidget* %126, i32 0, i32 2, i32 2, i32 3)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %vbox, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call84)
  %130 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %130, %struct._GtkWidget* %131, i32 1, i32 1, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #4
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #4
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #4
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #4
  %call91 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call86, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @vector_type_click_callback to void ()*), i8* bitcast (i32* @vector_type to i8*), i32 0, i8* %call87, i32 0, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @vector_types, i32 0, i64 0), i8* %call88, i32 1, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @vector_types, i32 0, i64 1), i8* %call89, i32 2, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @vector_types, i32 0, i64 2), i8* %call90, i32 3, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @vector_types, i32 0, i64 3), i8* null)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %frame, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_box_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call92)
  %135 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkBox*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %136, i32 1, i32 1, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #4
  %call95 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call95, %struct._GtkWidget** @orient_voronoi, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call96)
  %140 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %140, %struct._GtkWidget* %141, i32 1, i32 1, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_toggle_button_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call98)
  %145 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkToggleButton*
  %146 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %145, i32 %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %148 = bitcast %struct._GtkWidget* %147 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @angle_offset_adjust_move_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.29, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %149, i8* %call101, i8* null)
  %call102 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %table2, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_table_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call103)
  %152 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %152, i32 4)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call105)
  %155 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %155, %struct._GtkWidget* %156, i32 1, i32 1, i32 0)
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %157)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_table_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call107)
  %160 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTable*
  %call109 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #4
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0)) #4
  %call111 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %160, i32 0, i32 0, i8* %call109, i32 150, i32 6, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call110, i8* null)
  %161 = bitcast %struct._GtkObject* %call111 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %161, %struct._GtkAdjustment** @angle_adjust, align 8
  %162 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_adjust, align 8
  %163 = bitcast %struct._GtkAdjustment* %162 to i8*
  %call112 = call i64 @g_signal_connect_data(i8* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @angle_adjust_move_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_table_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call113)
  %166 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTable*
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0)) #4
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0)) #4
  %call117 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %166, i32 0, i32 1, i8* %call115, i32 150, i32 6, double 0.000000e+00, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call116, i8* null)
  %167 = bitcast %struct._GtkObject* %call117 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %167, %struct._GtkAdjustment** @angle_offset_adjust, align 8
  %168 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_offset_adjust, align 8
  %169 = bitcast %struct._GtkAdjustment* %168 to i8*
  %call118 = call i64 @g_signal_connect_data(i8* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @angle_offset_adjust_move_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_table_get_type() #5
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call119)
  %172 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkTable*
  %call121 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0)) #4
  %call123 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %172, i32 0, i32 2, i8* %call121, i32 150, i32 6, double 1.000000e+00, double 1.000000e-01, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call122, i8* null)
  %173 = bitcast %struct._GtkObject* %call123 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %173, %struct._GtkAdjustment** @strength_adjust, align 8
  %174 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @strength_adjust, align 8
  %175 = bitcast %struct._GtkAdjustment* %174 to i8*
  %call124 = call i64 @g_signal_connect_data(i8* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @strength_adjust_move_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %177 = bitcast %struct._GtkWidget* %176 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_table_get_type() #5
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %177, i64 %call125)
  %178 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkTable*
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0)) #4
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)) #4
  %call129 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %178, i32 0, i32 3, i8* %call127, i32 150, i32 6, double 1.000000e+00, double 1.000000e-01, double 1.090000e+01, double 1.000000e-01, double 1.000000e+00, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call128, i8* null)
  %179 = bitcast %struct._GtkObject* %call129 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %179, %struct._GtkAdjustment** @orient_map_str_exp_adjust, align 8
  %180 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @orient_map_str_exp_adjust, align 8
  %181 = bitcast %struct._GtkAdjustment* %180 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @strength_exponent_adjust_move_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_map_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %182)
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @orient_map_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 -10, label %sw.bb
    i32 -5, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @num_vectors, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 19), i32 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom1
  %5 = bitcast %struct.vector* %arrayidx to i8*
  %6 = bitcast %struct.vector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 56, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @num_vectors, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 20), align 4
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @orient_map_str_exp_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  store double %call, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 24), align 8
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_offset_adjust, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  store double %call3, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 23), align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @orient_voronoi, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_button_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleButton*
  %call6 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %13)
  store i32 %call6, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 27), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %entry
  %14 = load i32, i32* %response_id.addr, align 4
  %cmp7 = icmp ne i32 %14, -10
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @map_click_callback(%struct._GtkWidget* %w, %struct._GdkEventButton* %event) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %d = alloca double, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 4
  %3 = load double, double* %x, align 8
  %div = fdiv double %3, 1.500000e+02
  %4 = load i32, i32* @selectedvector, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %x1 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 0
  store double %div, double* %x1, align 8
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 5
  %6 = load double, double* %y, align 8
  %div2 = fdiv double %6, 1.500000e+02
  %7 = load i32, i32* @selectedvector, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom3
  %y5 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx4, i32 0, i32 1
  store double %div2, double* %y5, align 8
  br label %if.end.41

if.else:                                          ; preds = %entry
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button6 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 8
  %9 = load i32, i32* %button6, align 4
  %cmp7 = icmp eq i32 %9, 2
  br i1 %cmp7, label %if.then.8, label %if.else.15

if.then.8:                                        ; preds = %if.else
  %10 = load i32, i32* @num_vectors, align 4
  %add = add nsw i32 %10, 1
  %cmp9 = icmp eq i32 %add, 50
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  br label %return

if.end:                                           ; preds = %if.then.8
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 4
  %12 = load double, double* %x11, align 8
  %div12 = fdiv double %12, 1.500000e+02
  %13 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y13 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %13, i32 0, i32 5
  %14 = load double, double* %y13, align 8
  %div14 = fdiv double %14, 1.500000e+02
  call void @add_new_vector(double %div12, double %div14)
  call void @update_slides()
  br label %if.end.40

if.else.15:                                       ; preds = %if.else
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button16 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 8
  %16 = load i32, i32* %button16, align 4
  %cmp17 = icmp eq i32 %16, 3
  br i1 %cmp17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %if.else.15
  %17 = load i32, i32* @selectedvector, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom19
  %x21 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx20, i32 0, i32 0
  %18 = load double, double* %x21, align 8
  %mul = fmul double 1.500000e+02, %18
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x22 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 4
  %20 = load double, double* %x22, align 8
  %sub = fsub double %mul, %20
  %21 = load i32, i32* @selectedvector, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom23
  %y25 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx24, i32 0, i32 1
  %22 = load double, double* %y25, align 8
  %mul26 = fmul double 1.500000e+02, %22
  %23 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y27 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %23, i32 0, i32 5
  %24 = load double, double* %y27, align 8
  %sub28 = fsub double %mul26, %24
  %call = call double @atan2(double %sub, double %sub28) #4
  store double %call, double* %d, align 8
  %25 = load double, double* %d, align 8
  %mul29 = fmul double %25, 3.600000e+02
  %div30 = fdiv double %mul29, 0x401921FB54442D18
  %26 = load i32, i32* @selectedvector, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom31
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx32, i32 0, i32 2
  store double %div30, double* %dir, align 8
  %27 = load double, double* %d, align 8
  %call33 = call double @sin(double %27) #4
  %28 = load i32, i32* @selectedvector, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom34
  %dx = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx35, i32 0, i32 3
  store double %call33, double* %dx, align 8
  %29 = load double, double* %d, align 8
  %call36 = call double @cos(double %29) #4
  %30 = load i32, i32* @selectedvector, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom37
  %dy = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx38, i32 0, i32 4
  store double %call36, double* %dy, align 8
  call void @update_slides()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.18, %if.else.15
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end.41, %if.then.10
  ret void
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @prev_click_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedvector, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @selectedvector, align 4
  %1 = load i32, i32* @selectedvector, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @num_vectors, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* @selectedvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @update_slides()
  call void @update_vector_prev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @next_click_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedvector, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @selectedvector, align 4
  %1 = load i32, i32* @selectedvector, align 4
  %2 = load i32, i32* @num_vectors, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @selectedvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @update_slides()
  call void @update_vector_prev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_click_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @add_new_vector(double 5.000000e-01, double 5.000000e-01)
  call void @update_slides()
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_click_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @selectedvector, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @num_vectors, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom1
  %5 = bitcast %struct.vector* %arrayidx to i8*
  %6 = bitcast %struct.vector* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 56, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @num_vectors, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @num_vectors, align 4
  %9 = load i32, i32* @selectedvector, align 4
  %10 = load i32, i32* @num_vectors, align 4
  %cmp3 = icmp sge i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* @selectedvector, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @update_slides()
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  ret void
}

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @vector_type_click_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @adjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %w.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %1, i8* %2)
  %3 = load i32, i32* @vector_type, align 4
  %4 = load i32, i32* @selectedvector, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 6
  store i32 %3, i32* %type, align 4
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @angle_offset_adjust_move_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @adjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @angle_adjust_move_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @adjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %2 = load i32, i32* @selectedvector, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 2
  store double %call, double* %dir, align 8
  %3 = load i32, i32* @selectedvector, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom1
  %dir3 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx2, i32 0, i32 2
  %4 = load double, double* %dir3, align 8
  %mul = fmul double %4, 0x401921FB54442D18
  %div = fdiv double %mul, 3.600000e+02
  %call4 = call double @sin(double %div) #4
  %5 = load i32, i32* @selectedvector, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom5
  %dx = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx6, i32 0, i32 3
  store double %call4, double* %dx, align 8
  %6 = load i32, i32* @selectedvector, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom7
  %dir9 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx8, i32 0, i32 2
  %7 = load double, double* %dir9, align 8
  %mul10 = fmul double %7, 0x401921FB54442D18
  %div11 = fdiv double %mul10, 3.600000e+02
  %call12 = call double @cos(double %div11) #4
  %8 = load i32, i32* @selectedvector, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom13
  %dy = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx14, i32 0, i32 4
  store double %call12, double* %dy, align 8
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strength_adjust_move_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @adjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @strength_adjust, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  %2 = load i32, i32* @selectedvector, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 5
  store double %call, double* %str, align 8
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strength_exponent_adjust_move_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @adjignore, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @update_vector_prev()
  call void @update_orient_map_preview_prev()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @add_new_vector(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @num_vectors, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %x1 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 0
  store double %0, double* %x1, align 8
  %2 = load double, double* %y.addr, align 8
  %3 = load i32, i32* @num_vectors, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom2
  %y4 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx3, i32 0, i32 1
  store double %2, double* %y4, align 8
  %4 = load i32, i32* @num_vectors, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom5
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx6, i32 0, i32 2
  store double 0.000000e+00, double* %dir, align 8
  %call = call double @sin(double 0.000000e+00) #4
  %5 = load i32, i32* @num_vectors, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom7
  %dx = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx8, i32 0, i32 3
  store double %call, double* %dx, align 8
  %call9 = call double @cos(double 0.000000e+00) #4
  %6 = load i32, i32* @num_vectors, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom10
  %dy = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx11, i32 0, i32 4
  store double %call9, double* %dy, align 8
  %7 = load i32, i32* @num_vectors, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom12
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx13, i32 0, i32 5
  store double 1.000000e+00, double* %str, align 8
  %8 = load i32, i32* @num_vectors, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom14
  %type = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx15, i32 0, i32 6
  store i32 0, i32* %type, align 4
  %9 = load i32, i32* @num_vectors, align 4
  store i32 %9, i32* @selectedvector, align 4
  %10 = load i32, i32* @num_vectors, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @num_vectors, align 4
  ret void
}

declare void @infile_copy_to_ppm(%struct.ppm*) #1

declare void @ppm_apply_brightness(%struct.ppm*, float, i32, i32, i32) #1

declare void @resize_fast(%struct.ppm*, i32, i32) #1

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #1

declare void @ppm_drawline(%struct.ppm*, float, float, float, float, i8*) #1

declare void @ppm_put_rgb(%struct.ppm*, float, float, i8*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @ppm_new(%struct.ppm*, i32, i32) #1

declare void @fill(%struct.ppm*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @update_slides() #0 {
entry:
  %type = alloca i32, align 4
  store i32 1, i32* @adjignore, align 4
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @angle_adjust, align 8
  %1 = load i32, i32* @selectedvector, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom
  %dir = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx, i32 0, i32 2
  %2 = load double, double* %dir, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %0, double %2)
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** @strength_adjust, align 8
  %4 = load i32, i32* @selectedvector, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom1
  %str = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx2, i32 0, i32 5
  %5 = load double, double* %str, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %5)
  %6 = load i32, i32* @selectedvector, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.vector], [50 x %struct.vector]* @vector, i32 0, i64 %idxprom3
  %type5 = getelementptr inbounds %struct.vector, %struct.vector* %arrayidx4, i32 0, i32 6
  %7 = load i32, i32* %type5, align 4
  store i32 %7, i32* %type, align 4
  %8 = load i32, i32* %type, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @vector_types, i32 0, i64 %idxprom6
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx7, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %11, i32 1)
  store i32 0, i32* @adjignore, align 4
  ret void
}

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
