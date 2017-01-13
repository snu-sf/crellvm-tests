; ModuleID = './plug-ins/gimpressionist/size.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@sizenumadjust = internal global %struct._GtkObject* null, align 8
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@sizefirstadjust = internal global %struct._GtkObject* null, align 8
@sizelastadjust = internal global %struct._GtkObject* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"_Size\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Size variants:\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"The number of sizes of brushes to use\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Minimum size:\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"The smallest brush to create\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Maximum size:\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"The largest brush to create\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Size depends on:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"Let the value (brightness) of the region determine the size of the stroke\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"The distance from the center of the image determines the size of the stroke\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Selects a random size for each stroke\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Radial\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"Let the direction from the center determine the size of the stroke\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Flowing\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"The strokes follow a \22flowing\22 pattern\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"The hue of the region determines the size of the stroke\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Adaptive\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"The brush-size that matches the original image the closest is selected\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Manual\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Manually specify the stroke size\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Opens up the Size Map Editor\00", align 1
@sizeradio = internal global [8 x %struct._GtkWidget*] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @size_type_input(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %cmp = icmp sgt i32 %0, 7
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
  %cond5 = phi i32 [ 7, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond5
}

; Function Attrs: nounwind uwtable
define void @size_restore() #0 {
entry:
  call void @size_type_restore()
  %0 = load %struct._GtkObject*, %struct._GtkObject** @sizenumadjust, align 8
  %1 = bitcast %struct._GtkObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %3 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31), align 4
  %conv = sitofp i32 %3 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %2, double %conv)
  %4 = load %struct._GtkObject*, %struct._GtkObject** @sizefirstadjust, align 8
  %5 = bitcast %struct._GtkObject* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_adjustment_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkAdjustment*
  %7 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %6, double %7)
  %8 = load %struct._GtkObject*, %struct._GtkObject** @sizelastadjust, align 8
  %9 = bitcast %struct._GtkObject* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_adjustment_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkAdjustment*
  %11 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33), align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %10, double %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @size_type_restore() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 34), align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x %struct._GtkWidget*], [8 x %struct._GtkWidget*]* @sizeradio, i32 0, i64 %idxprom
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 1)
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define void @create_sizepage(%struct._GtkNotebook* %notebook) #0 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %box2 = alloca %struct._GtkWidget*, align 8
  %box3 = alloca %struct._GtkWidget*, align 8
  %box4 = alloca %struct._GtkWidget*, align 8
  %thispage = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %tmpw = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %radio_group = alloca %struct._GSList*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store %struct._GSList* null, %struct._GSList** %radio_group, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
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
  %call5 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %table, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %6, i32 6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %9, i32 6)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %12, %struct._GtkWidget* %13, i32 0, i32 0, i32 0)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #5
  %18 = load i32, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31), align 4
  %conv = sitofp i32 %18 to double
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0)) #5
  %call16 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %17, i32 0, i32 0, i8* %call14, i32 150, i32 -1, double %conv, double 1.000000e+00, double 3.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call15, i8* null)
  store %struct._GtkObject* %call16, %struct._GtkObject** @sizenumadjust, align 8
  %19 = load %struct._GtkObject*, %struct._GtkObject** @sizenumadjust, align 8
  %20 = bitcast %struct._GtkObject* %19 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 31) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #5
  %24 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32), align 8
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #5
  %call22 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %23, i32 0, i32 1, i8* %call20, i32 150, i32 -1, double %24, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call21, i8* null)
  store %struct._GtkObject* %call22, %struct._GtkObject** @sizefirstadjust, align 8
  %25 = load %struct._GtkObject*, %struct._GtkObject** @sizefirstadjust, align 8
  %26 = bitcast %struct._GtkObject* %25 to i8*
  %call23 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 32) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)) #5
  %30 = load double, double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33), align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #5
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %29, i32 0, i32 2, i8* %call26, i32 150, i32 -1, double %30, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* %call27, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** @sizelastadjust, align 8
  %31 = load %struct._GtkObject*, %struct._GtkObject** @sizelastadjust, align 8
  %32 = bitcast %struct._GtkObject* %31 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 33) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call30 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %box2, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call31)
  %35 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %box3, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #4
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call34)
  %40 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #5
  %call37 = call %struct._GtkWidget* @gtk_label_new(i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %tmpw, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call38)
  %45 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %call40 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %box3, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_box_get_type() #4
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call41)
  %50 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #5
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %53, i32 0, i8* %call43, i8* %call44, %struct._GSList** %radio_group)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #5
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %54, i32 1, i8* %call45, i8* %call46, %struct._GSList** %radio_group)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #5
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %55, i32 2, i8* %call47, i8* %call48, %struct._GSList** %radio_group)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #5
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %56, i32 3, i8* %call49, i8* %call50, %struct._GSList** %radio_group)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %box3, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %box2, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #4
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call52)
  %59 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #5
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %62, i32 4, i8* %call54, i8* %call55, %struct._GSList** %radio_group)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #5
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %63, i32 5, i8* %call56, i8* %call57, %struct._GSList** %radio_group)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %64, i32 6, i8* %call58, i8* %call59, %struct._GSList** %radio_group)
  %call60 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %box4, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %box3, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #4
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call61)
  %67 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #5
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0)) #5
  call void @create_size_radio_button(%struct._GtkWidget* %70, i32 7, i8* %call63, i8* %call64, %struct._GSList** %radio_group)
  call void @size_type_restore()
  %call65 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %tmpw, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %box4, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call66)
  %73 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 0, i32 0, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @create_sizemap_dialog_helper to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %tmpw, align 8
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %78, i8* %call69, i8* null)
  %79 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %thispage, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call70 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %79, %struct._GtkWidget* %80, %struct._GtkWidget* %81, %struct._GtkWidget* null)
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

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @create_size_radio_button(%struct._GtkWidget* %box, i32 %orient_type, i8* %label, i8* %help_string, %struct._GSList** %radio_group) #0 {
entry:
  %box.addr = alloca %struct._GtkWidget*, align 8
  %orient_type.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %help_string.addr = alloca i8*, align 8
  %radio_group.addr = alloca %struct._GSList**, align 8
  store %struct._GtkWidget* %box, %struct._GtkWidget** %box.addr, align 8
  store i32 %orient_type, i32* %orient_type.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store i8* %help_string, i8** %help_string.addr, align 8
  store %struct._GSList** %radio_group, %struct._GSList*** %radio_group.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %box.addr, align 8
  %1 = load i32, i32* %orient_type.addr, align 4
  %2 = load i8*, i8** %label.addr, align 8
  %3 = load i8*, i8** %help_string.addr, align 8
  %4 = load %struct._GSList**, %struct._GSList*** %radio_group.addr, align 8
  %call = call %struct._GtkWidget* @create_radio_button(%struct._GtkWidget* %0, i32 %1, void (%struct._GtkWidget*, i8*)* @size_store, i8* %2, i8* %3, %struct._GSList** %4, %struct._GtkWidget** getelementptr inbounds ([8 x %struct._GtkWidget*], [8 x %struct._GtkWidget*]* @sizeradio, i32 0, i32 0))
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @create_sizemap_dialog_helper(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([8 x %struct._GtkWidget*], [8 x %struct._GtkWidget*]* @sizeradio, i32 0, i64 7), align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %2, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @create_sizemap_dialog(%struct._GtkWidget* %3)
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare %struct._GtkWidget* @create_radio_button(%struct._GtkWidget*, i32, void (%struct._GtkWidget*, i8*)*, i8*, i8*, %struct._GSList**, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @size_store(%struct._GtkWidget* %wg, i8* %d) #0 {
entry:
  %wg.addr = alloca %struct._GtkWidget*, align 8
  %d.addr = alloca i8*, align 8
  store %struct._GtkWidget* %wg, %struct._GtkWidget** %wg.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** %d.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 34), align 4
  ret void
}

declare void @create_sizemap_dialog(%struct._GtkWidget*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
