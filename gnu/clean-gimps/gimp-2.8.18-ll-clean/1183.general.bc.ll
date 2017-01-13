; ModuleID = './plug-ins/gimpressionist/general.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }

@general_paint_edges = internal global %struct._GtkWidget* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@general_dark_edge_adjust = internal global %struct._GtkObject* null, align 8
@general_tileable = internal global %struct._GtkWidget* null, align 8
@general_drop_shadow = internal global %struct._GtkWidget* null, align 8
@general_shadow_adjust = internal global %struct._GtkObject* null, align 8
@general_shadow_depth = internal global %struct._GtkObject* null, align 8
@general_shadow_blur = internal global %struct._GtkObject* null, align 8
@dev_thresh_adjust = internal global %struct._GtkObject* null, align 8
@general_bg_radio = internal global [4 x %struct._GtkWidget*] zeroinitializer, align 16
@general_color_button = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"_General\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Keep original\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Preserve the original image as a background\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"From paper\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Copy the texture of the selected paper as a background\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Solid colored background\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"Use a transparent background; Only the strokes painted will be visible\00", align 1
@img_has_alpha = external global i32, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"Paint edges\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"Selects if to place strokes all the way out to the edges of the image\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Tileable\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"Selects if the resulting image should be seamlessly tileable\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Drop shadow\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Adds a shadow effect to each brush stroke\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Edge darken:\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"How much to \22darken\22 the edges of each brush stroke\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Shadow darken:\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"How much to \22darken\22 the drop shadow\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Shadow depth:\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"The depth of the drop shadow, i.e. how far apart from the object it should be\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Shadow blur:\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"How much to blur the drop shadow\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Deviation threshold:\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"A bailout-value for adaptive selections\00", align 1

; Function Attrs: nounwind uwtable
define void @general_store() #0 {
entry:
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @general_paint_edges, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 17), align 4
  %3 = load %struct._GtkObject*, %struct._GtkObject** @general_dark_edge_adjust, align 8
  %4 = bitcast %struct._GtkObject* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_adjustment_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkAdjustment*
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  store double %call5, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 9), align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @general_tileable, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  %call8 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %8)
  store i32 %call8, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 25), align 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @general_drop_shadow, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %call11 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %11)
  store i32 %call11, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  %12 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_adjust, align 8
  %13 = bitcast %struct._GtkObject* %12 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_adjustment_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call12)
  %14 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkAdjustment*
  %call14 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %14)
  store double %call14, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 30), align 8
  %15 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_depth, align 8
  %16 = bitcast %struct._GtkObject* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_adjustment_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkAdjustment*
  %call17 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %17)
  %conv = fptosi double %call17 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  %18 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_blur, align 8
  %19 = bitcast %struct._GtkObject* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_adjustment_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkAdjustment*
  %call20 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %20)
  %conv21 = fptosi double %call20 to i32
  store i32 %conv21, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  %21 = load %struct._GtkObject*, %struct._GtkObject** @dev_thresh_adjust, align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_adjustment_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkAdjustment*
  %call24 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %23)
  store double %call24, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 35), align 8
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @general_bg_type_input(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %in.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i32, i32* %in.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i32 [ 0, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i32 [ 3, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond5
}

; Function Attrs: nounwind uwtable
define void @general_restore() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 8), align 4
  %call = call i32 @normalize_bg(i32 %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @general_bg_radio, i32 0, i64 %idxprom
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_toggle_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @general_paint_edges, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  %7 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %6, i32 %7)
  %8 = load %struct._GtkObject*, %struct._GtkObject** @general_dark_edge_adjust, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_adjustment_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkAdjustment*
  %11 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 9), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %11)
  %12 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_adjust, align 8
  %13 = bitcast %struct._GtkObject* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_adjustment_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkAdjustment*
  %15 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 30), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %14, double %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @general_drop_shadow, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %19 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %18, i32 %19)
  %20 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_depth, align 8
  %21 = bitcast %struct._GtkObject* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_adjustment_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkAdjustment*
  %23 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  %conv = sitofp i32 %23 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %22, double %conv)
  %24 = load %struct._GtkObject*, %struct._GtkObject** @general_shadow_blur, align 8
  %25 = bitcast %struct._GtkObject* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_adjustment_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkAdjustment*
  %27 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  %conv15 = sitofp i32 %27 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %26, double %conv15)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** @general_tileable, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_toggle_button_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call16)
  %30 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkToggleButton*
  %31 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 25), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %30, i32 %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @general_color_button, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_color_button_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call18)
  %34 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpColorButton*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %34, %struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 16))
  %35 = load %struct._GtkObject*, %struct._GtkObject** @dev_thresh_adjust, align 8
  %36 = bitcast %struct._GtkObject* %35 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_adjustment_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call20)
  %37 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkAdjustment*
  %38 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 35), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %37, double %38)
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @normalize_bg(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @img_has_alpha, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %n.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #2

; Function Attrs: nounwind uwtable
define void @create_generalpage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %box1 = alloca %struct._GtkWidget*, align 8
  %box2 = alloca %struct._GtkWidget*, align 8
  %box3 = alloca %struct._GtkWidget*, align 8
  %box4 = alloca %struct._GtkWidget*, align 8
  %thispage = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store %struct._GSList* null, %struct._GSList** %radio_group, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %label, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %thispage, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #5
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call7)
  %6 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %6, %struct._GtkWidget* %7, i32 0, i32 0, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %box3, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #5
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0)) #5
  %call14 = call %struct._GtkWidget* @create_general_button(%struct._GtkWidget* %14, i32 1, i8* %call12, i8* %call13, %struct._GSList** %radio_group)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #5
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0)) #5
  %call17 = call %struct._GtkWidget* @create_general_button(%struct._GtkWidget* %15, i32 2, i8* %call15, i8* %call16, %struct._GSList** %radio_group)
  %call18 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %box4, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call19)
  %18 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  %call23 = call %struct._GtkWidget* @create_general_button(%struct._GtkWidget* %21, i32 0, i8* %call21, i8* %call22, %struct._GSList** %radio_group)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %call25 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call24, i32 30, i32 20, %struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 16), i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @general_color_button, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @general_color_button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @select_color to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @general_color_button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 16) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call28)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** @general_color_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** @general_color_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)) #5
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i32 0, i32 0)) #5
  %call32 = call %struct._GtkWidget* @create_general_button(%struct._GtkWidget* %31, i32 3, i8* %call30, i8* %call31, %struct._GSList** %radio_group)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %tmpw, align 8
  %32 = load i32, i32* @img_has_alpha, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %33, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 8), align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @general_bg_radio, i32 0, i64 %idxprom
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_toggle_button_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call33)
  %37 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %37, i32 1)
  %call35 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %box1, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_box_get_type() #4
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call36)
  %40 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %box2, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #4
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call39)
  %45 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %tmpw, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %48, %struct._GtkWidget** @general_paint_edges, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call43)
  %51 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %54, i8* %call45, i8* null)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_toggle_button_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call46)
  %57 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkToggleButton*
  %58 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 17), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %57, i32 %58)
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #5
  %call49 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call48)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %call49, %struct._GtkWidget** @general_tileable, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #4
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call50)
  %61 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %64, i8* %call52, i8* null)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_toggle_button_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call53)
  %67 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkToggleButton*
  %68 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 25), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %67, i32 %68)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #5
  %call56 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call55)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %tmpw, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  store %struct._GtkWidget* %69, %struct._GtkWidget** @general_drop_shadow, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #4
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call57)
  %72 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %75, i8* %call59, i8* null)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_toggle_button_get_type() #4
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call60)
  %78 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkToggleButton*
  %79 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 29), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %78, i32 %79)
  %call62 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %table, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #4
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call63)
  %82 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %82, i32 6)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call65)
  %85 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %85, i32 6)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %box1, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call67)
  %88 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call69)
  %93 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #5
  %94 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 9), align 8
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0)) #5
  %call73 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %93, i32 0, i32 0, i8* %call71, i32 150, i32 6, double %94, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call72, i8* null)
  store %struct._GtkObject* %call73, %struct._GtkObject** @general_dark_edge_adjust, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #4
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call74)
  %97 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)) #5
  %98 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 30), align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0)) #5
  %call78 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %97, i32 0, i32 1, i8* %call76, i32 150, i32 6, double %98, double 0.000000e+00, double 9.900000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call77, i8* null)
  store %struct._GtkObject* %call78, %struct._GtkObject** @general_shadow_adjust, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #4
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call79)
  %101 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #5
  %102 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 40), align 4
  %conv = sitofp i32 %102 to double
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i32 0, i32 0)) #5
  %call83 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %101, i32 0, i32 2, i8* %call81, i32 150, i32 6, double %conv, double 0.000000e+00, double 9.900000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call82, i8* null)
  store %struct._GtkObject* %call83, %struct._GtkObject** @general_shadow_depth, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #4
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call84)
  %105 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #5
  %106 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 41), align 4
  %conv87 = sitofp i32 %106 to double
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0)) #5
  %call89 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %105, i32 0, i32 3, i8* %call86, i32 150, i32 6, double %conv87, double 0.000000e+00, double 9.900000e+01, double 1.000000e+00, double 5.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call88, i8* null)
  store %struct._GtkObject* %call89, %struct._GtkObject** @general_shadow_blur, align 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #4
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call90)
  %109 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0)) #5
  %110 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 35), align 8
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0)) #5
  %call94 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %109, i32 0, i32 4, i8* %call92, i32 150, i32 6, double %110, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call93, i8* null)
  store %struct._GtkObject* %call94, %struct._GtkObject** @dev_thresh_adjust, align 8
  %111 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call95 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %111, %struct._GtkWidget* %112, %struct._GtkWidget* %113, %struct._GtkWidget* null)
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @create_general_button(%struct._GtkWidget* %box, i32 %idx, i8* %label, i8* %help_string, %struct._GSList** %radio_group) #0 {
entry:
  %box.addr = alloca %struct._GtkWidget*, align 8
  %idx.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %help_string.addr = alloca i8*, align 8
  %radio_group.addr = alloca %struct._GSList**, align 8
  store %struct._GtkWidget* %box, %struct._GtkWidget** %box.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store i8* %help_string, i8** %help_string.addr, align 8
  store %struct._GSList** %radio_group, %struct._GSList*** %radio_group.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %1 = load i32, i32* %idx.addr, align 4
  %2 = load i8*, i8** %label.addr, align 8
  %3 = load i8*, i8** %help_string.addr, align 8
  %4 = load %struct._GSList**, %struct._GSList*** %radio_group.addr, align 8
  %call = call %struct._GtkWidget* @create_radio_button(%struct._GtkWidget* %0, i32 %1, void (%struct._GtkWidget*, i8*)* @general_bg_callback, i8* %2, i8* %3, %struct._GSList** %4, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @general_bg_radio, i32 0, i32 0))
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @select_color(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* @general_bg_radio, i32 0, i64 0), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %2, i32 1)
  ret void
}

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @create_radio_button(%struct._GtkWidget*, i32, void (%struct._GtkWidget*, i8*)*, i8*, i8*, %struct._GSList**, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @general_bg_callback(%struct._GtkWidget* %wg, i8* %d) #0 {
entry:
  %wg.addr = alloca %struct._GtkWidget*, align 8
  %d.addr = alloca i8*, align 8
  store %struct._GtkWidget* %wg, %struct._GtkWidget** %wg.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call i32 @normalize_bg(i32 %conv)
  store i32 %call, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 8), align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
