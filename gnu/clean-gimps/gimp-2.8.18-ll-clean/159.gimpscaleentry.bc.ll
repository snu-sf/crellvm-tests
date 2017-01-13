; ModuleID = './libgimpwidgets/gimpscaleentry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_scale_entry_set_logarithmic = private unnamed_addr constant [33 x i8] c"gimp_scale_entry_set_logarithmic\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GTK_IS_ADJUSTMENT (adjustment)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"logarithmic\00", align 1
@__func__.gimp_scale_entry_set_sensitive = private unnamed_addr constant [31 x i8] c"gimp_scale_entry_set_sensitive\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %table, i32 %column, i32 %row, i8* %text, i32 %scale_width, i32 %spinbutton_width, double %value, double %lower, double %upper, double %step_increment, double %page_increment, i32 %digits, i32 %constrain, double %unconstrained_lower, double %unconstrained_upper, i8* %tooltip, i8* %help_id) #0 {
entry:
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %scale_width.addr = alloca i32, align 4
  %spinbutton_width.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %constrain.addr = alloca i32, align 4
  %unconstrained_lower.addr = alloca double, align 8
  %unconstrained_upper.addr = alloca double, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %scale_width, i32* %scale_width.addr, align 4
  store i32 %spinbutton_width, i32* %spinbutton_width.addr, align 4
  store double %value, double* %value.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i32 %constrain, i32* %constrain.addr, align 4
  store double %unconstrained_lower, double* %unconstrained_lower.addr, align 8
  store double %unconstrained_upper, double* %unconstrained_upper.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %1 = load i32, i32* %column.addr, align 4
  %2 = load i32, i32* %row.addr, align 4
  %3 = load i8*, i8** %text.addr, align 8
  %4 = load i32, i32* %scale_width.addr, align 4
  %5 = load i32, i32* %spinbutton_width.addr, align 4
  %6 = load double, double* %value.addr, align 8
  %7 = load double, double* %lower.addr, align 8
  %8 = load double, double* %upper.addr, align 8
  %9 = load double, double* %step_increment.addr, align 8
  %10 = load double, double* %page_increment.addr, align 8
  %11 = load i32, i32* %digits.addr, align 4
  %12 = load i32, i32* %constrain.addr, align 4
  %13 = load double, double* %unconstrained_lower.addr, align 8
  %14 = load double, double* %unconstrained_upper.addr, align 8
  %15 = load i8*, i8** %tooltip.addr, align 8
  %16 = load i8*, i8** %help_id.addr, align 8
  %call = call %struct._GtkObject* @gimp_scale_entry_new_internal(i32 0, %struct._GtkTable* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, double %6, double %7, double %8, double %9, double %10, i32 %11, i32 %12, double %13, double %14, i8* %15, i8* %16)
  ret %struct._GtkObject* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkObject* @gimp_scale_entry_new_internal(i32 %color_scale, %struct._GtkTable* %table, i32 %column, i32 %row, i8* %text, i32 %scale_width, i32 %spinbutton_width, double %value, double %lower, double %upper, double %step_increment, double %page_increment, i32 %digits, i32 %constrain, double %unconstrained_lower, double %unconstrained_upper, i8* %tooltip, i8* %help_id) #0 {
entry:
  %color_scale.addr = alloca i32, align 4
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %scale_width.addr = alloca i32, align 4
  %spinbutton_width.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %constrain.addr = alloca i32, align 4
  %unconstrained_lower.addr = alloca double, align 8
  %unconstrained_upper.addr = alloca double, align 8
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %scale = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %return_adj = alloca %struct._GtkObject*, align 8
  %constrained_adj = alloca %struct._GtkObject*, align 8
  store i32 %color_scale, i32* %color_scale.addr, align 4
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %scale_width, i32* %scale_width.addr, align 4
  store i32 %spinbutton_width, i32* %spinbutton_width.addr, align 4
  store double %value, double* %value.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i32 %constrain, i32* %constrain.addr, align 4
  store double %unconstrained_lower, double* %unconstrained_lower.addr, align 8
  store double %unconstrained_upper, double* %unconstrained_upper.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %3, float 0.000000e+00, float 5.000000e-01)
  %4 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %5 = bitcast %struct._GtkTable* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %8 = load i32, i32* %column.addr, align 4
  %9 = load i32, i32* %column.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %row.addr, align 4
  %11 = load i32, i32* %row.addr, align 4
  %add5 = add nsw i32 %11, 1
  call void @gtk_table_attach(%struct._GtkTable* %6, %struct._GtkWidget* %7, i32 %8, i32 %add, i32 %10, i32 %add5, i32 4, i32 4, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %13 = load i32, i32* %constrain.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %14 = load double, double* %unconstrained_lower.addr, align 8
  %15 = load double, double* %lower.addr, align 8
  %cmp = fcmp ole double %14, %15
  br i1 %cmp, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %16 = load double, double* %unconstrained_upper.addr, align 8
  %17 = load double, double* %upper.addr, align 8
  %cmp7 = fcmp oge double %16, %17
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %18 = load double, double* %value.addr, align 8
  %19 = load double, double* %lower.addr, align 8
  %20 = load double, double* %upper.addr, align 8
  %21 = load double, double* %step_increment.addr, align 8
  %22 = load double, double* %page_increment.addr, align 8
  %call8 = call %struct._GtkObject* @gtk_adjustment_new(double %18, double %19, double %20, double %21, double %22, double 0.000000e+00)
  store %struct._GtkObject* %call8, %struct._GtkObject** %constrained_adj, align 8
  %23 = load double, double* %value.addr, align 8
  %24 = load double, double* %unconstrained_lower.addr, align 8
  %25 = load double, double* %unconstrained_upper.addr, align 8
  %26 = load double, double* %step_increment.addr, align 8
  %27 = load double, double* %page_increment.addr, align 8
  %28 = load double, double* %step_increment.addr, align 8
  %29 = load i32, i32* %digits.addr, align 4
  %call9 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %23, double %24, double %25, double %26, double %27, double 0.000000e+00, double %28, i32 %29)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %spinbutton, align 8
  %30 = load %struct._GtkObject*, %struct._GtkObject** %constrained_adj, align 8
  %31 = bitcast %struct._GtkObject* %30 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %33 = bitcast %struct._GObject* %32 to i8*
  %34 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %35 = bitcast %struct._GtkObject* %34 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %37 = bitcast %struct._GtkObject* %36 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %39 = bitcast %struct._GObject* %38 to i8*
  %40 = load %struct._GtkObject*, %struct._GtkObject** %constrained_adj, align 8
  %41 = bitcast %struct._GtkObject* %40 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  store %struct._GtkObject* %42, %struct._GtkObject** %return_adj, align 8
  %43 = load %struct._GtkObject*, %struct._GtkObject** %constrained_adj, align 8
  store %struct._GtkObject* %43, %struct._GtkObject** %adjustment, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %44 = load double, double* %value.addr, align 8
  %45 = load double, double* %lower.addr, align 8
  %46 = load double, double* %upper.addr, align 8
  %47 = load double, double* %step_increment.addr, align 8
  %48 = load double, double* %page_increment.addr, align 8
  %49 = load double, double* %step_increment.addr, align 8
  %50 = load i32, i32* %digits.addr, align 4
  %call14 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %44, double %45, double %46, double %47, double %48, double 0.000000e+00, double %49, i32 %50)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %spinbutton, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  store %struct._GtkObject* %51, %struct._GtkObject** %return_adj, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_label_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call15)
  %54 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkLabel*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %54, %struct._GtkWidget* %55)
  %56 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp17 = icmp sgt i32 %56, 0
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end
  %57 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp19 = icmp slt i32 %57, 17
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.then.18
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_entry_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call21)
  %60 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkEntry*
  %61 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %60, i32 %61)
  br label %if.end.24

if.else.23:                                       ; preds = %if.then.18
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %63 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %62, i32 %63, i32 -1)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %64 = load i32, i32* %color_scale.addr, align 4
  %tobool26 = icmp ne i32 %64, 0
  br i1 %tobool26, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.end.25
  %call28 = call %struct._GtkWidget* @gimp_color_scale_new(i32 0, i32 2)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %scale, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_range_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call29)
  %67 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkRange*
  %68 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %69 = bitcast %struct._GtkObject* %68 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_adjustment_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call31)
  %70 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkAdjustment*
  call void @gtk_range_set_adjustment(%struct._GtkRange* %67, %struct._GtkAdjustment* %70)
  br label %if.end.37

if.else.33:                                       ; preds = %if.end.25
  %71 = load %struct._GtkObject*, %struct._GtkObject** %adjustment, align 8
  %72 = bitcast %struct._GtkObject* %71 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_adjustment_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call34)
  %73 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkAdjustment*
  %call36 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %73)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %scale, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.then.27
  %74 = load i32, i32* %scale_width.addr, align 4
  %cmp38 = icmp sgt i32 %74, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %76 = load i32, i32* %scale_width.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %75, i32 %76, i32 -1)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_scale_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call41)
  %79 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkScale*
  %80 = load i32, i32* %digits.addr, align 4
  call void @gtk_scale_set_digits(%struct._GtkScale* %79, i32 %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_scale_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call43)
  %83 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %83, i32 0)
  %84 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %85 = bitcast %struct._GtkTable* %84 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_table_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call45)
  %86 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkTable*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %88 = load i32, i32* %column.addr, align 4
  %add47 = add nsw i32 %88, 1
  %89 = load i32, i32* %column.addr, align 4
  %add48 = add nsw i32 %89, 2
  %90 = load i32, i32* %row.addr, align 4
  %91 = load i32, i32* %row.addr, align 4
  %add49 = add nsw i32 %91, 1
  call void @gtk_table_attach(%struct._GtkTable* %86, %struct._GtkWidget* %87, i32 %add47, i32 %add48, i32 %90, i32 %add49, i32 5, i32 4, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %93 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %94 = bitcast %struct._GtkTable* %93 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call50)
  %95 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %97 = load i32, i32* %column.addr, align 4
  %add52 = add nsw i32 %97, 2
  %98 = load i32, i32* %column.addr, align 4
  %add53 = add nsw i32 %98, 3
  %99 = load i32, i32* %row.addr, align 4
  %100 = load i32, i32* %row.addr, align 4
  %add54 = add nsw i32 %100, 1
  call void @gtk_table_attach(%struct._GtkTable* %95, %struct._GtkWidget* %96, i32 %add52, i32 %add53, i32 %99, i32 %add54, i32 6, i32 2, i32 0, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %102 = load i8*, i8** %tooltip.addr, align 8
  %tobool55 = icmp ne i8* %102, null
  br i1 %tobool55, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %103 = load i8*, i8** %help_id.addr, align 8
  %tobool56 = icmp ne i8* %103, null
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %if.end.40
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %105 = load i8*, i8** %tooltip.addr, align 8
  %106 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %104, i8* %105, i8* %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %108 = load i8*, i8** %tooltip.addr, align 8
  %109 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %107, i8* %108, i8* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %111 = load i8*, i8** %tooltip.addr, align 8
  %112 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %110, i8* %111, i8* %112)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %lor.lhs.false
  %113 = load %struct._GtkObject*, %struct._GtkObject** %return_adj, align 8
  %114 = bitcast %struct._GtkObject* %113 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 80)
  %115 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  call void @g_object_set_data(%struct._GObject* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %117)
  %118 = load %struct._GtkObject*, %struct._GtkObject** %return_adj, align 8
  %119 = bitcast %struct._GtkObject* %118 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 80)
  %120 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %122 = bitcast %struct._GtkWidget* %121 to i8*
  call void @g_object_set_data(%struct._GObject* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %122)
  %123 = load %struct._GtkObject*, %struct._GtkObject** %return_adj, align 8
  %124 = bitcast %struct._GtkObject* %123 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %127 = bitcast %struct._GtkWidget* %126 to i8*
  call void @g_object_set_data(%struct._GObject* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* %127)
  %128 = load %struct._GtkObject*, %struct._GtkObject** %return_adj, align 8
  ret %struct._GtkObject* %128
}

; Function Attrs: nounwind uwtable
define %struct._GtkObject* @gimp_color_scale_entry_new(%struct._GtkTable* %table, i32 %column, i32 %row, i8* %text, i32 %scale_width, i32 %spinbutton_width, double %value, double %lower, double %upper, double %step_increment, double %page_increment, i32 %digits, i8* %tooltip, i8* %help_id) #0 {
entry:
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %scale_width.addr = alloca i32, align 4
  %spinbutton_width.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %tooltip.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %scale_width, i32* %scale_width.addr, align 4
  store i32 %spinbutton_width, i32* %spinbutton_width.addr, align 4
  store double %value, double* %value.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %1 = load i32, i32* %column.addr, align 4
  %2 = load i32, i32* %row.addr, align 4
  %3 = load i8*, i8** %text.addr, align 8
  %4 = load i32, i32* %scale_width.addr, align 4
  %5 = load i32, i32* %spinbutton_width.addr, align 4
  %6 = load double, double* %value.addr, align 8
  %7 = load double, double* %lower.addr, align 8
  %8 = load double, double* %upper.addr, align 8
  %9 = load double, double* %step_increment.addr, align 8
  %10 = load double, double* %page_increment.addr, align 8
  %11 = load i32, i32* %digits.addr, align 4
  %12 = load i8*, i8** %tooltip.addr, align 8
  %13 = load i8*, i8** %help_id.addr, align 8
  %call = call %struct._GtkObject* @gimp_scale_entry_new_internal(i32 1, %struct._GtkTable* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, double %6, double %7, double %8, double %9, double %10, i32 %11, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %12, i8* %13)
  ret %struct._GtkObject* %call
}

; Function Attrs: nounwind uwtable
define void @gimp_scale_entry_set_logarithmic(%struct._GtkObject* %adjustment, i32 %logarithmic) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkObject*, align 8
  %logarithmic.addr = alloca i32, align 4
  %adj = alloca %struct._GtkAdjustment*, align 8
  %scale_adj = alloca %struct._GtkAdjustment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %correction = alloca double, align 8
  %log_value = alloca double, align 8
  %log_lower = alloca double, align 8
  %log_upper = alloca double, align 8
  %log_step_increment = alloca double, align 8
  %log_page_increment = alloca double, align 8
  %new_adj = alloca %struct._GtkObject*, align 8
  %lower = alloca double, align 8
  %upper = alloca double, align 8
  store %struct._GtkObject* %adjustment, %struct._GtkObject** %adjustment.addr, align 8
  store i32 %logarithmic, i32* %logarithmic.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_adjustment_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_scale_entry_set_logarithmic, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.102

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %14 = bitcast %struct._GtkObject* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_adjustment_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %15, %struct._GtkAdjustment** %adj, align 8
  %16 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %17 = bitcast %struct._GtkObject* %16 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %19 = bitcast i8* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_range_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkRange*
  %call17 = call %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange* %20)
  store %struct._GtkAdjustment* %call17, %struct._GtkAdjustment** %scale_adj, align 8
  %21 = load i32, i32* %logarithmic.addr, align 4
  %22 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %call18 = call i32 @gimp_scale_entry_get_logarithmic(%struct._GtkObject* %22)
  %cmp19 = icmp eq i32 %21, %call18
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  br label %if.end.102

if.end.21:                                        ; preds = %do.end
  %23 = load i32, i32* %logarithmic.addr, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then.23, label %if.else.77

if.then.23:                                       ; preds = %if.end.21
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call30 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %24)
  %cmp31 = fcmp ogt double %call30, 0.000000e+00
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call32 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %25)
  %sub = fsub double -0.000000e+00, %call32
  %add = fadd double 1.000000e-01, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %add, %cond.false ]
  store double %cond, double* %correction, align 8
  %26 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call33 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %26)
  %27 = load double, double* %correction, align 8
  %add34 = fadd double %call33, %27
  %call35 = call double @log(double %add34) #7
  store double %call35, double* %log_value, align 8
  %28 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call36 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %28)
  %29 = load double, double* %correction, align 8
  %add37 = fadd double %call36, %29
  %call38 = call double @log(double %add37) #7
  store double %call38, double* %log_lower, align 8
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call39 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %30)
  %31 = load double, double* %correction, align 8
  %add40 = fadd double %call39, %31
  %call41 = call double @log(double %add40) #7
  store double %call41, double* %log_upper, align 8
  %32 = load double, double* %log_upper, align 8
  %33 = load double, double* %log_lower, align 8
  %sub42 = fsub double %32, %33
  %34 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call43 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %34)
  %35 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call44 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %35)
  %sub45 = fsub double %call43, %call44
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call46 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %36)
  %div = fdiv double %sub45, %call46
  %div47 = fdiv double %sub42, %div
  store double %div47, double* %log_step_increment, align 8
  %37 = load double, double* %log_upper, align 8
  %38 = load double, double* %log_lower, align 8
  %sub48 = fsub double %37, %38
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call49 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %39)
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call50 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %40)
  %sub51 = fsub double %call49, %call50
  %41 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call52 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %41)
  %div53 = fdiv double %sub51, %call52
  %div54 = fdiv double %sub48, %div53
  store double %div54, double* %log_page_increment, align 8
  %42 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %43 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %cmp55 = icmp eq %struct._GtkAdjustment* %42, %43
  br i1 %cmp55, label %if.then.56, label %if.else.70

if.then.56:                                       ; preds = %cond.end
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call58 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %44)
  %45 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call59 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %45)
  %46 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call60 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %46)
  %47 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call61 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %47)
  %48 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call62 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %48)
  %call63 = call %struct._GtkObject* @gtk_adjustment_new(double %call58, double %call59, double %call60, double %call61, double %call62, double 0.000000e+00)
  store %struct._GtkObject* %call63, %struct._GtkObject** %new_adj, align 8
  %49 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %50 = bitcast %struct._GtkAdjustment* %49 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %call65 = call i8* @g_object_get_data(%struct._GObject* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %52 = bitcast i8* %call65 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_range_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call66)
  %53 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkRange*
  %54 = load %struct._GtkObject*, %struct._GtkObject** %new_adj, align 8
  %55 = bitcast %struct._GtkObject* %54 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_adjustment_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call68)
  %56 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkAdjustment*
  call void @gtk_range_set_adjustment(%struct._GtkRange* %53, %struct._GtkAdjustment* %56)
  %57 = load %struct._GtkObject*, %struct._GtkObject** %new_adj, align 8
  %58 = bitcast %struct._GtkObject* %57 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %58, %struct._GtkAdjustment** %scale_adj, align 8
  br label %if.end.73

if.else.70:                                       ; preds = %cond.end
  %59 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %60 = bitcast %struct._GtkAdjustment* %59 to i8*
  %61 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %62 = bitcast %struct._GtkAdjustment* %61 to i8*
  %call71 = call i32 @g_signal_handlers_disconnect_matched(i8* %60, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to i8*), i8* %62)
  %63 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %64 = bitcast %struct._GtkAdjustment* %63 to i8*
  %65 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %66 = bitcast %struct._GtkAdjustment* %65 to i8*
  %call72 = call i32 @g_signal_handlers_disconnect_matched(i8* %64, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to i8*), i8* %66)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.56
  %67 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %68 = load double, double* %log_value, align 8
  %69 = load double, double* %log_lower, align 8
  %70 = load double, double* %log_upper, align 8
  %71 = load double, double* %log_step_increment, align 8
  %72 = load double, double* %log_page_increment, align 8
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %67, double %68, double %69, double %70, double %71, double %72, double 0.000000e+00)
  %73 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %74 = bitcast %struct._GtkAdjustment* %73 to i8*
  %75 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %76 = bitcast %struct._GtkAdjustment* %75 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_exp_adjustment_callback to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %78 = bitcast %struct._GtkAdjustment* %77 to i8*
  %79 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %80 = bitcast %struct._GtkAdjustment* %79 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_log_adjustment_callback to void ()*), i8* %80, void (i8*, %struct._GClosure*)* null, i32 0)
  %81 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %82 = bitcast %struct._GtkObject* %81 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  br label %if.end.102

if.else.77:                                       ; preds = %if.end.21
  %84 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %85 = bitcast %struct._GtkAdjustment* %84 to i8*
  %86 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %87 = bitcast %struct._GtkAdjustment* %86 to i8*
  %call80 = call i32 @g_signal_handlers_disconnect_matched(i8* %85, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_log_adjustment_callback to i8*), i8* %87)
  %88 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %89 = bitcast %struct._GtkAdjustment* %88 to i8*
  %90 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %91 = bitcast %struct._GtkAdjustment* %90 to i8*
  %call81 = call i32 @g_signal_handlers_disconnect_matched(i8* %89, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_exp_adjustment_callback to i8*), i8* %91)
  %92 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call82 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %92)
  %call83 = call double @exp(double %call82) #7
  store double %call83, double* %lower, align 8
  %93 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %call84 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %93)
  %call85 = call double @exp(double %call84) #7
  store double %call85, double* %upper, align 8
  %94 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call86 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %94)
  %cmp87 = fcmp ole double %call86, 0.000000e+00
  br i1 %cmp87, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.else.77
  %95 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call89 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %95)
  %add90 = fadd double -1.000000e-01, %call89
  %96 = load double, double* %lower, align 8
  %add91 = fadd double %96, %add90
  store double %add91, double* %lower, align 8
  %97 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call92 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %97)
  %add93 = fadd double -1.000000e-01, %call92
  %98 = load double, double* %upper, align 8
  %add94 = fadd double %98, %add93
  store double %add94, double* %upper, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.88, %if.else.77
  %99 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %100 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call96 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %100)
  %101 = load double, double* %lower, align 8
  %102 = load double, double* %upper, align 8
  %103 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call97 = call double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment* %103)
  %104 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call98 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %104)
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %99, double %call96, double %101, double %102, double %call97, double %call98, double 0.000000e+00)
  %105 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %106 = bitcast %struct._GtkAdjustment* %105 to i8*
  %107 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %108 = bitcast %struct._GtkAdjustment* %107 to i8*
  %call99 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %110 = bitcast %struct._GtkAdjustment* %109 to i8*
  %111 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %scale_adj, align 8
  %112 = bitcast %struct._GtkAdjustment* %111 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to void ()*), i8* %112, void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %114 = bitcast %struct._GtkObject* %113 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 80)
  %115 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.9, %if.then.20, %if.end.95, %if.end.73
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GtkAdjustment* @gtk_range_get_adjustment(%struct._GtkRange*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_range_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_scale_entry_get_logarithmic(%struct._GtkObject* %adjustment) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkObject*, align 8
  store %struct._GtkObject* %adjustment, %struct._GtkObject** %adjustment.addr, align 8
  %0 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  ret i32 %conv
}

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #3

; Function Attrs: nounwind
declare double @log(double) #4

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #3

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #3

declare double @gtk_adjustment_get_step_increment(%struct._GtkAdjustment*) #3

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #3

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #3

declare void @gtk_range_set_adjustment(%struct._GtkRange*, %struct._GtkAdjustment*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_entry_unconstrained_adjustment_callback(%struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment* %other_adj) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %other_adj.addr = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GtkAdjustment* %other_adj, %struct._GtkAdjustment** %other_adj.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to i8*
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to i8*), i8* %3)
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %call1)
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %7 = bitcast %struct._GtkAdjustment* %6 to i8*
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %9 = bitcast %struct._GtkAdjustment* %8 to i8*
  %call2 = call i32 @g_signal_handlers_unblock_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_unconstrained_adjustment_callback to i8*), i8* %9)
  ret void
}

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_entry_exp_adjustment_callback(%struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment* %other_adj) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %other_adj.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GtkAdjustment* %other_adj, %struct._GtkAdjustment** %other_adj.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to i8*
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_log_adjustment_callback to i8*), i8* %3)
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %4)
  %call2 = call double @exp(double %call1) #7
  store double %call2, double* %value, align 8
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %call3 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %5)
  %cmp = fcmp ole double %call3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %call4 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %sub = fsub double %call4, 1.000000e-01
  %7 = load double, double* %value, align 8
  %add = fadd double %7, %sub
  store double %add, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %9 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %9)
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %11 = bitcast %struct._GtkAdjustment* %10 to i8*
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %13 = bitcast %struct._GtkAdjustment* %12 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %11, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_log_adjustment_callback to i8*), i8* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_scale_entry_log_adjustment_callback(%struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment* %other_adj) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %other_adj.addr = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GtkAdjustment* %other_adj, %struct._GtkAdjustment** %other_adj.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %1 = bitcast %struct._GtkAdjustment* %0 to i8*
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %3 = bitcast %struct._GtkAdjustment* %2 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_exp_adjustment_callback to i8*), i8* %3)
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call1 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %4)
  %cmp = fcmp ole double %call1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %5)
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call3 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %sub = fsub double %call2, %call3
  %add = fadd double %sub, 1.000000e-01
  %call4 = call double @log(double %add) #7
  store double %call4, double* %value, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %7)
  %call6 = call double @log(double %call5) #7
  store double %call6, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %9 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %9)
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %other_adj.addr, align 8
  %11 = bitcast %struct._GtkAdjustment* %10 to i8*
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %13 = bitcast %struct._GtkAdjustment* %12 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %11, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GtkAdjustment*)* @gimp_scale_entry_exp_adjustment_callback to i8*), i8* %13)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %adjustment, i32 %sensitive) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkObject*, align 8
  %sensitive.addr = alloca i32, align 4
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkObject* %adjustment, %struct._GtkObject** %adjustment.addr, align 8
  store i32 %sensitive, i32* %sensitive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_adjustment_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_scale_entry_set_sensitive, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.25

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %14 = bitcast %struct._GtkObject* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %widget, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %19 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %18, i32 %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %do.end
  %20 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %21 = bitcast %struct._GtkObject* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %call17 = call i8* @g_object_get_data(%struct._GObject* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %23 = bitcast i8* %call17 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %widget, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool18 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %26 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %25, i32 %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.15
  %27 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %28 = bitcast %struct._GtkObject* %27 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  %call22 = call i8* @g_object_get_data(%struct._GObject* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %30 = bitcast i8* %call22 to %struct._GtkWidget*
  store %struct._GtkWidget* %30, %struct._GtkWidget** %widget, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool23 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %33 = load i32, i32* %sensitive.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %32, i32 %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.9, %if.then.24, %if.end.20
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #3

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare %struct._GtkWidget* @gimp_color_scale_new(i32, i32) #3

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #3

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #3

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
